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

import com.osrapi.models.ll.LLIoItemDataEntity;
import com.osrapi.models.ll.LLDiceEntity;
import com.osrapi.models.ll.LLGroupEntity;
import com.osrapi.models.ll.LLObjectTypeEntity;

import com.osrapi.repositories.ll.LLIoItemDataRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/io_item_data")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLIoItemDataController {
    /** the static instance of {@link LLIoItemDataController}. */
    private static LLIoItemDataController instance;
    /**
     * Gets the static instance.
     * @return {@link LLIoItemDataController}
     */
    public static LLIoItemDataController getInstance() {
        if (instance == null) {
            new LLIoItemDataController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLIoItemDataRepository repository;
    /** Creates a new instance of {@link LLIoItemDataController}. */
    public LLIoItemDataController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getAll() {
        Iterator<LLIoItemDataEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLIoItemDataEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getById(
            @PathVariable final Long id) {
        LLIoItemDataEntity entity = repository.findOne(id);
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        resources.add(getIoItemDataResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLIoItemDataEntity}.
     * @param entity the {@link LLIoItemDataEntity}
     * @return {@link Resource}<{@link LLIoItemDataEntity}>
     */
    private Resource<LLIoItemDataEntity> getIoItemDataResource(
            final LLIoItemDataEntity entity) {
        Resource<LLIoItemDataEntity> resource =
                new Resource<LLIoItemDataEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLIoItemDataEntity}s.
     * @param entities the list of {@link LLIoItemDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLIoItemDataEntity>> save(
            @RequestBody final List<LLIoItemDataEntity> entities) {
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        Iterator<LLIoItemDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLIoItemDataEntity}.
     * @param entity the {@link LLIoItemDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLIoItemDataEntity>> save(
            @RequestBody final LLIoItemDataEntity entity) {
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

    if (entity.getTypes() != null
                && !entity.getTypes().isEmpty()) {
            for (int i = entity.getTypes().size() - 1; i >= 0; i--) {
                LLObjectTypeEntity types = null;
                List<Resource<LLObjectTypeEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = LLObjectTypeController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity LLObjectTypeEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = LLObjectTypeEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity LLObjectTypeEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getTypes().get(i)) != null) {
                            list = (List<Resource<LLObjectTypeEntity>>) method
                                    .invoke(
                                            LLObjectTypeController.getInstance(),
                                            (String) field.get(entity.getTypes().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = LLObjectTypeController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity LLObjectTypeEntity from Controller by code");
            }
            try {
              field = LLObjectTypeEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity LLObjectTypeEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getTypes().get(i)) != null) {
                                list = (List<Resource<LLObjectTypeEntity>>) method
                                        .invoke(
                                                LLObjectTypeController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getTypes().get(i)));
                            }
                        }
                    }
                    method = null;
                    field = null;
                } catch (SecurityException | IllegalArgumentException
                        | IllegalAccessException
                        | InvocationTargetException e) {
              System.out.println("CANNOT get embedded lookup Entity LLObjectTypeEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    types = list.get(0).getContent();
                }
                if (types == null) {
                    types = (LLObjectTypeEntity) ((Resource) LLObjectTypeController
                            .getInstance()
                            .save(entity.getTypes().get(i)).get(0)).getContent();
                }
                entity.getTypes().set(i, types);
                list = null;
            }
        }

        if (entity.getDamages() != null
        && entity.getDamages().getId() == null) {
      setDamagesIdFromRepository(entity);
        }


    
        LLIoItemDataEntity savedEntity = repository.save(entity);
        List<Resource<LLIoItemDataEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLIoItemDataEntity} instance
     */
    private void setIdFromRepository(final LLIoItemDataEntity entity) {
        List<LLIoItemDataEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLIoItemDataEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLIoItemDataEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLIoItemDataEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLIoItemDataEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLIoItemDataEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLIoItemDataEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLIoItemDataEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLIoItemDataEntity}s.
     * @param entities the list of {@link LLIoItemDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLIoItemDataEntity>> update(
            @RequestBody final List<LLIoItemDataEntity> entities) {
        List<Resource<LLIoItemDataEntity>> resources = new ArrayList<Resource<LLIoItemDataEntity>>();
        Iterator<LLIoItemDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLIoItemDataEntity}.
     * @param entity the {@link LLIoItemDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLIoItemDataEntity>> update(
            @RequestBody final LLIoItemDataEntity entity) {        
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

    if (entity.getTypes() != null
                && !entity.getTypes().isEmpty()) {
            for (int i = entity.getTypes().size() - 1; i >= 0; i--) {
                LLObjectTypeEntity types = null;
                List<Resource<LLObjectTypeEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = LLObjectTypeController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity LLObjectTypeEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = LLObjectTypeEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity LLObjectTypeEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getTypes().get(i)) != null) {
                            list = (List<Resource<LLObjectTypeEntity>>) method
                                    .invoke(
                                            LLObjectTypeController.getInstance(),
                                            (String) field.get(entity.getTypes().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = LLObjectTypeController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity LLObjectTypeEntity from Controller by code");
            }
            try {
              field = LLObjectTypeEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity LLObjectTypeEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getTypes().get(i)) != null) {
                                list = (List<Resource<LLObjectTypeEntity>>) method
                                        .invoke(
                                                LLObjectTypeController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getTypes().get(i)));
                            }
                        }
                    }
                    method = null;
                    field = null;
                } catch (SecurityException | IllegalArgumentException
                        | IllegalAccessException
                        | InvocationTargetException e) {
              System.out.println("CANNOT get embedded lookup Entity LLObjectTypeEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    types = list.get(0).getContent();
                }
                if (types == null) {
                    types = (LLObjectTypeEntity) ((Resource) LLObjectTypeController
                            .getInstance()
                            .save(entity.getTypes().get(i)).get(0)).getContent();
                }
                entity.getTypes().set(i, types);
                list = null;
            }
        }

        if (entity.getDamages() != null
        && entity.getDamages().getId() == null) {
      setDamagesIdFromRepository(entity);
        }


    
        LLIoItemDataEntity savedEntity = repository.save(entity);
        List<Resource<LLIoItemDataEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

  private void setDamagesIdFromRepository(
      final LLIoItemDataEntity entity) {
    LLDiceEntity memberEntity = null;
    List<Resource<LLDiceEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = LLDiceController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = LLDiceEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getDamages()) != null) {
          list = (List<Resource<LLDiceEntity>>) method
              .invoke(
                  LLDiceController.getInstance(),
                  (String) field
                      .get(entity.getDamages()));
        }
      }
      if (list == null) {
        try {
          method = LLDiceController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = LLDiceEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getDamages()) != null) {
            list = (List<Resource<LLDiceEntity>>)
                method.invoke(LLDiceController
                    .getInstance(),(String) field.get(
                        entity.getDamages()));
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
      memberEntity = (LLDiceEntity)
          ((Resource) LLDiceController.getInstance().save(
              entity.getDamages()).get(0)).getContent();
    }
    entity.setDamages(memberEntity);
    list = null;
    }


    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a count.
     * @param count the io_item_data' count
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "count/{count}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByCount(
            @PathVariable final Long count) {
        Iterator<LLIoItemDataEntity> iter = repository.findByCount(count)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a description.
     * @param description the io_item_data' description
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<LLIoItemDataEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a foodValue.
     * @param foodValue the io_item_data' foodValue
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "food_value/{foodValue}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByFoodValue(
            @PathVariable final Long foodValue) {
        Iterator<LLIoItemDataEntity> iter = repository.findByFoodValue(foodValue)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a internalScript.
     * @param internalScript the io_item_data' internalScript
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "internal_script/{internalScript}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByInternalScript(
            @PathVariable final String internalScript) {
        Iterator<LLIoItemDataEntity> iter = repository.findByInternalScript(internalScript)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a leftRing.
     * @param leftRing the io_item_data' leftRing
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "left_ring/{leftRing}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByLeftRing(
            @PathVariable final Boolean leftRing) {
        Iterator<LLIoItemDataEntity> iter = repository.findByLeftRing(leftRing)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a lightValue.
     * @param lightValue the io_item_data' lightValue
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "light_value/{lightValue}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByLightValue(
            @PathVariable final Long lightValue) {
        Iterator<LLIoItemDataEntity> iter = repository.findByLightValue(lightValue)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a maxOwned.
     * @param maxOwned the io_item_data' maxOwned
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "max_owned/{maxOwned}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByMaxOwned(
            @PathVariable final Long maxOwned) {
        Iterator<LLIoItemDataEntity> iter = repository.findByMaxOwned(maxOwned)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a name.
     * @param name the io_item_data' name
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByName(
            @PathVariable final String name) {
        Iterator<LLIoItemDataEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a price.
     * @param price the io_item_data' price
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "price/{price}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByPrice(
            @PathVariable final float price) {
        Iterator<LLIoItemDataEntity> iter = repository.findByPrice(price)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a ringType.
     * @param ringType the io_item_data' ringType
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "ring_type/{ringType}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByRingType(
            @PathVariable final Long ringType) {
        Iterator<LLIoItemDataEntity> iter = repository.findByRingType(ringType)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a stackSize.
     * @param stackSize the io_item_data' stackSize
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "stack_size/{stackSize}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByStackSize(
            @PathVariable final Long stackSize) {
        Iterator<LLIoItemDataEntity> iter = repository.findByStackSize(stackSize)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a stealValue.
     * @param stealValue the io_item_data' stealValue
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "steal_value/{stealValue}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByStealValue(
            @PathVariable final Long stealValue) {
        Iterator<LLIoItemDataEntity> iter = repository.findByStealValue(stealValue)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a title.
     * @param title the io_item_data' title
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "title/{title}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByTitle(
            @PathVariable final String title) {
        Iterator<LLIoItemDataEntity> iter = repository.findByTitle(title)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoItemDataEntity}s that share a weight.
     * @param weight the io_item_data' weight
     * @return {@link List}<{@link Resource}<{@link LLIoItemDataEntity}>>
     */
    @RequestMapping(path = "weight/{weight}",
            method = RequestMethod.GET)
    public List<Resource<LLIoItemDataEntity>> getByWeight(
            @PathVariable final float weight) {
        Iterator<LLIoItemDataEntity> iter = repository.findByWeight(weight)
                .iterator();
        List<Resource<LLIoItemDataEntity>> resources =
                new ArrayList<Resource<LLIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
