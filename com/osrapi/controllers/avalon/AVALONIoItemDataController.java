package com.osrapi.controllers.avalon;

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

import com.osrapi.models.avalon.AVALONIoItemDataEntity;
import com.osrapi.models.avalon.AVALONAttackTypeEntity;
import com.osrapi.models.avalon.AVALONArmorConditionEntity;
import com.osrapi.models.avalon.AVALONVulnerabilityEntity;
import com.osrapi.models.avalon.AVALONGroupEntity;
import com.osrapi.models.avalon.AVALONArmorProtectionEntity;
import com.osrapi.models.avalon.AVALONObjectTypeEntity;

import com.osrapi.repositories.avalon.AVALONIoItemDataRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/avalon/io_item_data")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class AVALONIoItemDataController {
    /** the static instance of {@link AVALONIoItemDataController}. */
    private static AVALONIoItemDataController instance;
    /**
     * Gets the static instance.
     * @return {@link AVALONIoItemDataController}
     */
    public static AVALONIoItemDataController getInstance() {
        if (instance == null) {
            new AVALONIoItemDataController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private AVALONIoItemDataRepository repository;
    /** Creates a new instance of {@link AVALONIoItemDataController}. */
    public AVALONIoItemDataController() {
        instance = this;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s.
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getAll() {
        Iterator<AVALONIoItemDataEntity> iter = repository.findAll()
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link AVALONIoItemDataEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getById(
            @PathVariable final Long id) {
        AVALONIoItemDataEntity entity = repository.findOne(id);
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        resources.add(getIoItemDataResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link AVALONIoItemDataEntity}.
     * @param entity the {@link AVALONIoItemDataEntity}
     * @return {@link Resource}<{@link AVALONIoItemDataEntity}>
     */
    private Resource<AVALONIoItemDataEntity> getIoItemDataResource(
            final AVALONIoItemDataEntity entity) {
        Resource<AVALONIoItemDataEntity> resource =
                new Resource<AVALONIoItemDataEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link AVALONIoItemDataEntity}s.
     * @param entities the list of {@link AVALONIoItemDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<AVALONIoItemDataEntity>> save(
            @RequestBody final List<AVALONIoItemDataEntity> entities) {
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        Iterator<AVALONIoItemDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link AVALONIoItemDataEntity}.
     * @param entity the {@link AVALONIoItemDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<AVALONIoItemDataEntity>> save(
            @RequestBody final AVALONIoItemDataEntity entity) {
        if (entity.getGroups() != null
                && !entity.getGroups().isEmpty()) {
            for (int i = entity.getGroups().size() - 1; i >= 0; i--) {
                AVALONGroupEntity groups = null;
                List<Resource<AVALONGroupEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = AVALONGroupController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = AVALONGroupEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getGroups().get(i)) != null) {
                            list = (List<Resource<AVALONGroupEntity>>) method
                                    .invoke(
                                            AVALONGroupController.getInstance(),
                                            (String) field.get(entity.getGroups().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = AVALONGroupController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = AVALONGroupEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getGroups().get(i)) != null) {
                                list = (List<Resource<AVALONGroupEntity>>) method
                                        .invoke(
                                                AVALONGroupController
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
                    e.printStackTrace();
                }
                if (list != null
                        && !list.isEmpty()) {
                    groups = list.get(0).getContent();
                }
                if (groups == null) {
                    groups = (AVALONGroupEntity) ((Resource) AVALONGroupController
                            .getInstance()
                            .save(entity.getGroups().get(i)).get(0)).getContent();
                }
                entity.getGroups().set(i, groups);
                list = null;
            }
        }

    if (entity.getProtections() != null
                && !entity.getProtections().isEmpty()) {
            for (int i = entity.getProtections().size() - 1; i >= 0; i--) {
                AVALONArmorProtectionEntity protections = null;
                List<Resource<AVALONArmorProtectionEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = AVALONArmorProtectionController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = AVALONArmorProtectionEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getProtections().get(i)) != null) {
                            list = (List<Resource<AVALONArmorProtectionEntity>>) method
                                    .invoke(
                                            AVALONArmorProtectionController.getInstance(),
                                            (String) field.get(entity.getProtections().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = AVALONArmorProtectionController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = AVALONArmorProtectionEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getProtections().get(i)) != null) {
                                list = (List<Resource<AVALONArmorProtectionEntity>>) method
                                        .invoke(
                                                AVALONArmorProtectionController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getProtections().get(i)));
                            }
                        }
                    }
                    method = null;
                    field = null;
                } catch (SecurityException | IllegalArgumentException
                        | IllegalAccessException
                        | InvocationTargetException e) {
                    e.printStackTrace();
                }
                if (list != null
                        && !list.isEmpty()) {
                    protections = list.get(0).getContent();
                }
                if (protections == null) {
                    protections = (AVALONArmorProtectionEntity) ((Resource) AVALONArmorProtectionController
                            .getInstance()
                            .save(entity.getProtections().get(i)).get(0)).getContent();
                }
                entity.getProtections().set(i, protections);
                list = null;
            }
        }

    if (entity.getTypes() != null
                && !entity.getTypes().isEmpty()) {
            for (int i = entity.getTypes().size() - 1; i >= 0; i--) {
                AVALONObjectTypeEntity types = null;
                List<Resource<AVALONObjectTypeEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = AVALONObjectTypeController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = AVALONObjectTypeEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getTypes().get(i)) != null) {
                            list = (List<Resource<AVALONObjectTypeEntity>>) method
                                    .invoke(
                                            AVALONObjectTypeController.getInstance(),
                                            (String) field.get(entity.getTypes().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = AVALONObjectTypeController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = AVALONObjectTypeEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getTypes().get(i)) != null) {
                                list = (List<Resource<AVALONObjectTypeEntity>>) method
                                        .invoke(
                                                AVALONObjectTypeController
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
                    e.printStackTrace();
                }
                if (list != null
                        && !list.isEmpty()) {
                    types = list.get(0).getContent();
                }
                if (types == null) {
                    types = (AVALONObjectTypeEntity) ((Resource) AVALONObjectTypeController
                            .getInstance()
                            .save(entity.getTypes().get(i)).get(0)).getContent();
                }
                entity.getTypes().set(i, types);
                list = null;
            }
        }

        if (entity.getAttackMethod() != null
        && entity.getAttackMethod().getId() == null) {
      setAttackMethodIdFromRepository(entity);
        }

        if (entity.getCondition() != null
        && entity.getCondition().getId() == null) {
      setConditionIdFromRepository(entity);
        }

        if (entity.getWeightClass() != null
        && entity.getWeightClass().getId() == null) {
      setWeightClassIdFromRepository(entity);
        }


    
        AVALONIoItemDataEntity savedEntity = repository.save(entity);
        List<Resource<AVALONIoItemDataEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link AVALONIoItemDataEntity} instance
     */
    private void setIdFromRepository(final AVALONIoItemDataEntity entity) {
        List<AVALONIoItemDataEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = AVALONIoItemDataEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<AVALONIoItemDataEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = AVALONIoItemDataEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<AVALONIoItemDataEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
            e.printStackTrace();
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link AVALONIoItemDataEntity}s.
     * @param entities the list of {@link AVALONIoItemDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<AVALONIoItemDataEntity>> update(
            @RequestBody final List<AVALONIoItemDataEntity> entities) {
        List<Resource<AVALONIoItemDataEntity>> resources = new ArrayList<Resource<AVALONIoItemDataEntity>>();
        Iterator<AVALONIoItemDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link AVALONIoItemDataEntity}.
     * @param entity the {@link AVALONIoItemDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<AVALONIoItemDataEntity>> update(
            @RequestBody final AVALONIoItemDataEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
        if (entity.getGroups() != null
                && !entity.getGroups().isEmpty()) {
            for (int i = entity.getGroups().size() - 1; i >= 0; i--) {
                AVALONGroupEntity groups = null;
                List<Resource<AVALONGroupEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = AVALONGroupController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = AVALONGroupEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getGroups().get(i)) != null) {
                            list = (List<Resource<AVALONGroupEntity>>) method
                                    .invoke(
                                            AVALONGroupController.getInstance(),
                                            (String) field.get(entity.getGroups().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = AVALONGroupController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = AVALONGroupEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getGroups().get(i)) != null) {
                                list = (List<Resource<AVALONGroupEntity>>) method
                                        .invoke(
                                                AVALONGroupController
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
                    e.printStackTrace();
                }
                if (list != null
                        && !list.isEmpty()) {
                    groups = list.get(0).getContent();
                }
                if (groups == null) {
                    groups = (AVALONGroupEntity) ((Resource) AVALONGroupController
                            .getInstance()
                            .save(entity.getGroups().get(i)).get(0)).getContent();
                }
                entity.getGroups().set(i, groups);
                list = null;
            }
        }

    if (entity.getProtections() != null
                && !entity.getProtections().isEmpty()) {
            for (int i = entity.getProtections().size() - 1; i >= 0; i--) {
                AVALONArmorProtectionEntity protections = null;
                List<Resource<AVALONArmorProtectionEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = AVALONArmorProtectionController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = AVALONArmorProtectionEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getProtections().get(i)) != null) {
                            list = (List<Resource<AVALONArmorProtectionEntity>>) method
                                    .invoke(
                                            AVALONArmorProtectionController.getInstance(),
                                            (String) field.get(entity.getProtections().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = AVALONArmorProtectionController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = AVALONArmorProtectionEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getProtections().get(i)) != null) {
                                list = (List<Resource<AVALONArmorProtectionEntity>>) method
                                        .invoke(
                                                AVALONArmorProtectionController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getProtections().get(i)));
                            }
                        }
                    }
                    method = null;
                    field = null;
                } catch (SecurityException | IllegalArgumentException
                        | IllegalAccessException
                        | InvocationTargetException e) {
                    e.printStackTrace();
                }
                if (list != null
                        && !list.isEmpty()) {
                    protections = list.get(0).getContent();
                }
                if (protections == null) {
                    protections = (AVALONArmorProtectionEntity) ((Resource) AVALONArmorProtectionController
                            .getInstance()
                            .save(entity.getProtections().get(i)).get(0)).getContent();
                }
                entity.getProtections().set(i, protections);
                list = null;
            }
        }

    if (entity.getTypes() != null
                && !entity.getTypes().isEmpty()) {
            for (int i = entity.getTypes().size() - 1; i >= 0; i--) {
                AVALONObjectTypeEntity types = null;
                List<Resource<AVALONObjectTypeEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = AVALONObjectTypeController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = AVALONObjectTypeEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getTypes().get(i)) != null) {
                            list = (List<Resource<AVALONObjectTypeEntity>>) method
                                    .invoke(
                                            AVALONObjectTypeController.getInstance(),
                                            (String) field.get(entity.getTypes().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = AVALONObjectTypeController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = AVALONObjectTypeEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getTypes().get(i)) != null) {
                                list = (List<Resource<AVALONObjectTypeEntity>>) method
                                        .invoke(
                                                AVALONObjectTypeController
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
                    e.printStackTrace();
                }
                if (list != null
                        && !list.isEmpty()) {
                    types = list.get(0).getContent();
                }
                if (types == null) {
                    types = (AVALONObjectTypeEntity) ((Resource) AVALONObjectTypeController
                            .getInstance()
                            .save(entity.getTypes().get(i)).get(0)).getContent();
                }
                entity.getTypes().set(i, types);
                list = null;
            }
        }

        if (entity.getAttackMethod() != null
        && entity.getAttackMethod().getId() == null) {
      setAttackMethodIdFromRepository(entity);
        }

        if (entity.getCondition() != null
        && entity.getCondition().getId() == null) {
      setConditionIdFromRepository(entity);
        }

        if (entity.getWeightClass() != null
        && entity.getWeightClass().getId() == null) {
      setWeightClassIdFromRepository(entity);
        }


    
        AVALONIoItemDataEntity savedEntity = repository.save(entity);
        List<Resource<AVALONIoItemDataEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

  private void setAttackMethodIdFromRepository(
      final AVALONIoItemDataEntity entity) {
    AVALONAttackTypeEntity memberEntity = null;
    List<Resource<AVALONAttackTypeEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = AVALONAttackTypeController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = AVALONAttackTypeEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getAttackMethod()) != null) {
          list = (List<Resource<AVALONAttackTypeEntity>>) method
              .invoke(
                  AVALONAttackTypeController.getInstance(),
                  (String) field
                      .get(entity.getAttackMethod()));
        }
      }
      if (list == null) {
        try {
          method = AVALONAttackTypeController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = AVALONAttackTypeEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getAttackMethod()) != null) {
            list = (List<Resource<AVALONAttackTypeEntity>>)
                method.invoke(AVALONAttackTypeController
                    .getInstance(),(String) field.get(
                        entity.getAttackMethod()));
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
      memberEntity = (AVALONAttackTypeEntity)
          ((Resource) AVALONAttackTypeController.getInstance().save(
              entity.getAttackMethod()).get(0)).getContent();
    }
    entity.setAttackMethod(memberEntity);
    list = null;
    }

  private void setConditionIdFromRepository(
      final AVALONIoItemDataEntity entity) {
    AVALONArmorConditionEntity memberEntity = null;
    List<Resource<AVALONArmorConditionEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = AVALONArmorConditionController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = AVALONArmorConditionEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getCondition()) != null) {
          list = (List<Resource<AVALONArmorConditionEntity>>) method
              .invoke(
                  AVALONArmorConditionController.getInstance(),
                  (String) field
                      .get(entity.getCondition()));
        }
      }
      if (list == null) {
        try {
          method = AVALONArmorConditionController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = AVALONArmorConditionEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getCondition()) != null) {
            list = (List<Resource<AVALONArmorConditionEntity>>)
                method.invoke(AVALONArmorConditionController
                    .getInstance(),(String) field.get(
                        entity.getCondition()));
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
      memberEntity = (AVALONArmorConditionEntity)
          ((Resource) AVALONArmorConditionController.getInstance().save(
              entity.getCondition()).get(0)).getContent();
    }
    entity.setCondition(memberEntity);
    list = null;
    }

  private void setWeightClassIdFromRepository(
      final AVALONIoItemDataEntity entity) {
    AVALONVulnerabilityEntity memberEntity = null;
    List<Resource<AVALONVulnerabilityEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = AVALONVulnerabilityController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = AVALONVulnerabilityEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getWeightClass()) != null) {
          list = (List<Resource<AVALONVulnerabilityEntity>>) method
              .invoke(
                  AVALONVulnerabilityController.getInstance(),
                  (String) field
                      .get(entity.getWeightClass()));
        }
      }
      if (list == null) {
        try {
          method = AVALONVulnerabilityController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = AVALONVulnerabilityEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getWeightClass()) != null) {
            list = (List<Resource<AVALONVulnerabilityEntity>>)
                method.invoke(AVALONVulnerabilityController
                    .getInstance(),(String) field.get(
                        entity.getWeightClass()));
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
      memberEntity = (AVALONVulnerabilityEntity)
          ((Resource) AVALONVulnerabilityController.getInstance().save(
              entity.getWeightClass()).get(0)).getContent();
    }
    entity.setWeightClass(memberEntity);
    list = null;
    }


    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a attackSpeed.
     * @param attackSpeed the io_item_data' attackSpeed
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "attack_speed/{attackSpeed}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByAttackSpeed(
            @PathVariable final Long attackSpeed) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByAttackSpeed(attackSpeed)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a count.
     * @param count the io_item_data' count
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "count/{count}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByCount(
            @PathVariable final Long count) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByCount(count)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a description.
     * @param description the io_item_data' description
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a foodValue.
     * @param foodValue the io_item_data' foodValue
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "food_value/{foodValue}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByFoodValue(
            @PathVariable final Long foodValue) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByFoodValue(foodValue)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a internalScript.
     * @param internalScript the io_item_data' internalScript
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "internal_script/{internalScript}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByInternalScript(
            @PathVariable final String internalScript) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByInternalScript(internalScript)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a leftRing.
     * @param leftRing the io_item_data' leftRing
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "left_ring/{leftRing}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByLeftRing(
            @PathVariable final Boolean leftRing) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByLeftRing(leftRing)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a length.
     * @param length the io_item_data' length
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "length/{length}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByLength(
            @PathVariable final Long length) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByLength(length)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a lightValue.
     * @param lightValue the io_item_data' lightValue
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "light_value/{lightValue}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByLightValue(
            @PathVariable final Long lightValue) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByLightValue(lightValue)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a maxOwned.
     * @param maxOwned the io_item_data' maxOwned
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "max_owned/{maxOwned}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByMaxOwned(
            @PathVariable final Long maxOwned) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByMaxOwned(maxOwned)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a name.
     * @param name the io_item_data' name
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByName(
            @PathVariable final String name) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a price.
     * @param price the io_item_data' price
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "price/{price}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByPrice(
            @PathVariable final float price) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByPrice(price)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a ringType.
     * @param ringType the io_item_data' ringType
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "ring_type/{ringType}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByRingType(
            @PathVariable final Long ringType) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByRingType(ringType)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a sharpness.
     * @param sharpness the io_item_data' sharpness
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "sharpness/{sharpness}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getBySharpness(
            @PathVariable final Long sharpness) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findBySharpness(sharpness)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a stackSize.
     * @param stackSize the io_item_data' stackSize
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "stack_size/{stackSize}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByStackSize(
            @PathVariable final Long stackSize) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByStackSize(stackSize)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link AVALONIoItemDataEntity}s that share a stealValue.
     * @param stealValue the io_item_data' stealValue
     * @return {@link List}<{@link Resource}<{@link AVALONIoItemDataEntity}>>
     */
    @RequestMapping(path = "steal_value/{stealValue}",
            method = RequestMethod.GET)
    public List<Resource<AVALONIoItemDataEntity>> getByStealValue(
            @PathVariable final Long stealValue) {
        Iterator<AVALONIoItemDataEntity> iter = repository.findByStealValue(stealValue)
                .iterator();
        List<Resource<AVALONIoItemDataEntity>> resources =
                new ArrayList<Resource<AVALONIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
