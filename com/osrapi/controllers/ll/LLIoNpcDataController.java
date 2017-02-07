package com.osrapi.controllers.ll;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.Resource;
import org.springframework.hateoas.mvc.ControllerLinkBuilder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.osrapi.models.ll.LLIoNpcDataEntity;
import com.osrapi.models.ll.LLGenderEntity;
import com.osrapi.models.ll.LLGroupEntity;
import com.osrapi.models.ll.LLIoItemDataEntity;

import com.osrapi.repositories.ll.LLIoNpcDataRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/io_npc_data")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLIoNpcDataController {
    /** the static instance of {@link LLIoNpcDataController}. */
    private static LLIoNpcDataController instance;
    /**
     * Gets the static instance.
     * @return {@link LLIoNpcDataController}
     */
    public static LLIoNpcDataController getInstance() {
        if (instance == null) {
            new LLIoNpcDataController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLIoNpcDataRepository repository;
    /** Creates a new instance of {@link LLIoNpcDataController}. */
    public LLIoNpcDataController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getAll() {
        Iterator<LLIoNpcDataEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLIoNpcDataEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getById(
            @PathVariable final Long id) {
        LLIoNpcDataEntity entity = repository.findOne(id);
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        resources.add(getIoNpcDataResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLIoNpcDataEntity}.
     * @param entity the {@link LLIoNpcDataEntity}
     * @return {@link Resource}<{@link LLIoNpcDataEntity}>
     */
    private Resource<LLIoNpcDataEntity> getIoNpcDataResource(
            final LLIoNpcDataEntity entity) {
        Resource<LLIoNpcDataEntity> resource =
                new Resource<LLIoNpcDataEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLIoNpcDataEntity}s.
     * @param entities the list of {@link LLIoNpcDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLIoNpcDataEntity>> save(
            @RequestBody final List<LLIoNpcDataEntity> entities) {
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        Iterator<LLIoNpcDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLIoNpcDataEntity}.
     * @param entity the {@link LLIoNpcDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLIoNpcDataEntity>> save(
            @RequestBody final LLIoNpcDataEntity entity) {
        if (entity.getGroups() != null
                && !entity.getGroups().isEmpty()) {
            for (int i = entity.getGroups().size() - 1; i >= 0; i--) {
                LLGroupEntity groups = null;
                List<Resource<LLGroupEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = LLGroupController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity LLGroupEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = LLGroupEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity LLGroupEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getGroups().get(i)) != null) {
                            list = (List<Resource<LLGroupEntity>>) method
                                    .invoke(
                                            LLGroupController.getInstance(),
                                            (String) field.get(entity.getGroups().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = LLGroupController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity LLGroupEntity from Controller by code");
            }
            try {
              field = LLGroupEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity LLGroupEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getGroups().get(i)) != null) {
                                list = (List<Resource<LLGroupEntity>>) method
                                        .invoke(
                                                LLGroupController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getGroups().get(i)));
                            }
                        }
                    }
                    method = null;
                    field = null;
                } catch (SecurityException | IllegalArgumentException
                        | IllegalAccessException
                        | InvocationTargetException e) {
              System.out.println("CANNOT get embedded lookup Entity LLGroupEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    groups = list.get(0).getContent();
                }
                if (groups == null) {
                    groups = (LLGroupEntity) ((Resource) LLGroupController
                            .getInstance()
                            .save(entity.getGroups().get(i)).get(0)).getContent();
                }
                entity.getGroups().set(i, groups);
                list = null;
            }
        }

    if (entity.getInventoryItems() != null
                && !entity.getInventoryItems().isEmpty()) {
            for (int i = entity.getInventoryItems().size() - 1; i >= 0; i--) {
                LLIoItemDataEntity inventoryItems = null;
                List<Resource<LLIoItemDataEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = LLIoItemDataController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity LLIoItemDataEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = LLIoItemDataEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity LLIoItemDataEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getInventoryItems().get(i)) != null) {
                            list = (List<Resource<LLIoItemDataEntity>>) method
                                    .invoke(
                                            LLIoItemDataController.getInstance(),
                                            (String) field.get(entity.getInventoryItems().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = LLIoItemDataController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity LLIoItemDataEntity from Controller by code");
            }
            try {
              field = LLIoItemDataEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity LLIoItemDataEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getInventoryItems().get(i)) != null) {
                                list = (List<Resource<LLIoItemDataEntity>>) method
                                        .invoke(
                                                LLIoItemDataController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getInventoryItems().get(i)));
                            }
                        }
                    }
                    method = null;
                    field = null;
                } catch (SecurityException | IllegalArgumentException
                        | IllegalAccessException
                        | InvocationTargetException e) {
              System.out.println("CANNOT get embedded lookup Entity LLIoItemDataEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    inventoryItems = list.get(0).getContent();
                }
                if (inventoryItems == null) {
                    inventoryItems = (LLIoItemDataEntity) ((Resource) LLIoItemDataController
                            .getInstance()
                            .save(entity.getInventoryItems().get(i)).get(0)).getContent();
                }
                entity.getInventoryItems().set(i, inventoryItems);
                list = null;
            }
        }

        if (entity.getGender() != null
        && entity.getGender().getId() == null) {
      setGenderIdFromRepository(entity);
        }


    
        LLIoNpcDataEntity savedEntity = repository.save(entity);
        List<Resource<LLIoNpcDataEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLIoNpcDataEntity} instance
     */
    private void setIdFromRepository(final LLIoNpcDataEntity entity) {
        List<LLIoNpcDataEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLIoNpcDataEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLIoNpcDataEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLIoNpcDataEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLIoNpcDataEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLIoNpcDataEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLIoNpcDataEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLIoNpcDataEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLIoNpcDataEntity}s.
     * @param entities the list of {@link LLIoNpcDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLIoNpcDataEntity>> update(
            @RequestBody final List<LLIoNpcDataEntity> entities) {
        List<Resource<LLIoNpcDataEntity>> resources = new ArrayList<Resource<LLIoNpcDataEntity>>();
        Iterator<LLIoNpcDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLIoNpcDataEntity}.
     * @param entity the {@link LLIoNpcDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLIoNpcDataEntity>> update(
            @RequestBody final LLIoNpcDataEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
        if (entity.getGroups() != null
                && !entity.getGroups().isEmpty()) {
            for (int i = entity.getGroups().size() - 1; i >= 0; i--) {
                LLGroupEntity groups = null;
                List<Resource<LLGroupEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = LLGroupController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity LLGroupEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = LLGroupEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity LLGroupEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getGroups().get(i)) != null) {
                            list = (List<Resource<LLGroupEntity>>) method
                                    .invoke(
                                            LLGroupController.getInstance(),
                                            (String) field.get(entity.getGroups().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = LLGroupController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity LLGroupEntity from Controller by code");
            }
            try {
              field = LLGroupEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity LLGroupEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getGroups().get(i)) != null) {
                                list = (List<Resource<LLGroupEntity>>) method
                                        .invoke(
                                                LLGroupController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getGroups().get(i)));
                            }
                        }
                    }
                    method = null;
                    field = null;
                } catch (SecurityException | IllegalArgumentException
                        | IllegalAccessException
                        | InvocationTargetException e) {
              System.out.println("CANNOT get embedded lookup Entity LLGroupEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    groups = list.get(0).getContent();
                }
                if (groups == null) {
                    groups = (LLGroupEntity) ((Resource) LLGroupController
                            .getInstance()
                            .save(entity.getGroups().get(i)).get(0)).getContent();
                }
                entity.getGroups().set(i, groups);
                list = null;
            }
        }

    if (entity.getInventoryItems() != null
                && !entity.getInventoryItems().isEmpty()) {
            for (int i = entity.getInventoryItems().size() - 1; i >= 0; i--) {
                LLIoItemDataEntity inventoryItems = null;
                List<Resource<LLIoItemDataEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = LLIoItemDataController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity LLIoItemDataEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = LLIoItemDataEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity LLIoItemDataEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getInventoryItems().get(i)) != null) {
                            list = (List<Resource<LLIoItemDataEntity>>) method
                                    .invoke(
                                            LLIoItemDataController.getInstance(),
                                            (String) field.get(entity.getInventoryItems().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = LLIoItemDataController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity LLIoItemDataEntity from Controller by code");
            }
            try {
              field = LLIoItemDataEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity LLIoItemDataEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getInventoryItems().get(i)) != null) {
                                list = (List<Resource<LLIoItemDataEntity>>) method
                                        .invoke(
                                                LLIoItemDataController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getInventoryItems().get(i)));
                            }
                        }
                    }
                    method = null;
                    field = null;
                } catch (SecurityException | IllegalArgumentException
                        | IllegalAccessException
                        | InvocationTargetException e) {
              System.out.println("CANNOT get embedded lookup Entity LLIoItemDataEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    inventoryItems = list.get(0).getContent();
                }
                if (inventoryItems == null) {
                    inventoryItems = (LLIoItemDataEntity) ((Resource) LLIoItemDataController
                            .getInstance()
                            .save(entity.getInventoryItems().get(i)).get(0)).getContent();
                }
                entity.getInventoryItems().set(i, inventoryItems);
                list = null;
            }
        }

        if (entity.getGender() != null
        && entity.getGender().getId() == null) {
      setGenderIdFromRepository(entity);
        }


    
        LLIoNpcDataEntity savedEntity = repository.save(entity);
        List<Resource<LLIoNpcDataEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

  private void setGenderIdFromRepository(
      final LLIoNpcDataEntity entity) {
    LLGenderEntity memberEntity = null;
    List<Resource<LLGenderEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = LLGenderController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = LLGenderEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getGender()) != null) {
          list = (List<Resource<LLGenderEntity>>) method
              .invoke(
                  LLGenderController.getInstance(),
                  (String) field
                      .get(entity.getGender()));
        }
      }
      if (list == null) {
        try {
          method = LLGenderController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = LLGenderEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getGender()) != null) {
            list = (List<Resource<LLGenderEntity>>)
                method.invoke(LLGenderController
                    .getInstance(),(String) field.get(
                        entity.getGender()));
          }
        }
      }
      method = null;
      field = null;
    } catch (SecurityException | IllegalArgumentException
        | IllegalAccessException
        | InvocationTargetException e) {
    }
    if (list != null
        && !list.isEmpty()) {
      memberEntity = list.get(0).getContent();
    }
    if (memberEntity == null) {
      memberEntity = (LLGenderEntity)
          ((Resource) LLGenderController.getInstance().save(
              entity.getGender()).get(0)).getContent();
    }
    entity.setGender(memberEntity);
    list = null;
    }


    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a behavior.
     * @param behavior the io_npc_data' behavior
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "behavior/{behavior}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByBehavior(
            @PathVariable final Long behavior) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByBehavior(behavior)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a behaviorParam.
     * @param behaviorParam the io_npc_data' behaviorParam
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "behavior_param/{behaviorParam}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByBehaviorParam(
            @PathVariable final Float behaviorParam) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByBehaviorParam(behaviorParam)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a climbCount.
     * @param climbCount the io_npc_data' climbCount
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "climb_count/{climbCount}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByClimbCount(
            @PathVariable final Float climbCount) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByClimbCount(climbCount)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a collidState.
     * @param collidState the io_npc_data' collidState
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "collid_state/{collidState}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByCollidState(
            @PathVariable final Long collidState) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByCollidState(collidState)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a collidTime.
     * @param collidTime the io_npc_data' collidTime
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "collid_time/{collidTime}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByCollidTime(
            @PathVariable final Long collidTime) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByCollidTime(collidTime)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a critical.
     * @param critical the io_npc_data' critical
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "critical/{critical}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByCritical(
            @PathVariable final Float critical) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByCritical(critical)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a cut.
     * @param cut the io_npc_data' cut
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "cut/{cut}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByCut(
            @PathVariable final Boolean cut) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByCut(cut)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a cuts.
     * @param cuts the io_npc_data' cuts
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "cuts/{cuts}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByCuts(
            @PathVariable final Long cuts) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByCuts(cuts)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a damages.
     * @param damages the io_npc_data' damages
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "damages/{damages}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByDamages(
            @PathVariable final Float damages) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByDamages(damages)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a internalScript.
     * @param internalScript the io_npc_data' internalScript
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "internal_script/{internalScript}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByInternalScript(
            @PathVariable final String internalScript) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByInternalScript(internalScript)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a level.
     * @param level the io_npc_data' level
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "level/{level}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByLevel(
            @PathVariable final Long level) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByLevel(level)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a life.
     * @param life the io_npc_data' life
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "life/{life}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByLife(
            @PathVariable final Float life) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByLife(life)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a mana.
     * @param mana the io_npc_data' mana
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "mana/{mana}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByMana(
            @PathVariable final Float mana) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByMana(mana)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a maxlife.
     * @param maxlife the io_npc_data' maxlife
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "maxlife/{maxlife}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByMaxlife(
            @PathVariable final Float maxlife) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByMaxlife(maxlife)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a maxmana.
     * @param maxmana the io_npc_data' maxmana
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "maxmana/{maxmana}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByMaxmana(
            @PathVariable final Float maxmana) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByMaxmana(maxmana)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a module.
     * @param module the io_npc_data' module
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "module/{module}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByModule(
            @PathVariable final String module) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByModule(module)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a name.
     * @param name the io_npc_data' name
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByName(
            @PathVariable final String name) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a npcFlags.
     * @param npcFlags the io_npc_data' npcFlags
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "npc_flags/{npcFlags}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByNpcFlags(
            @PathVariable final Long npcFlags) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByNpcFlags(npcFlags)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a title.
     * @param title the io_npc_data' title
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "title/{title}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByTitle(
            @PathVariable final String title) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByTitle(title)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a weapon.
     * @param weapon the io_npc_data' weapon
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "weapon/{weapon}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByWeapon(
            @PathVariable final String weapon) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByWeapon(weapon)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoNpcDataEntity}s that share a xpvalue.
     * @param xpvalue the io_npc_data' xpvalue
     * @return {@link List}<{@link Resource}<{@link LLIoNpcDataEntity}>>
     */
    @RequestMapping(path = "xpvalue/{xpvalue}",
            method = RequestMethod.GET)
    public List<Resource<LLIoNpcDataEntity>> getByXpvalue(
            @PathVariable final Long xpvalue) {
        Iterator<LLIoNpcDataEntity> iter = repository.findByXpvalue(xpvalue)
                .iterator();
        List<Resource<LLIoNpcDataEntity>> resources =
                new ArrayList<Resource<LLIoNpcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoNpcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
