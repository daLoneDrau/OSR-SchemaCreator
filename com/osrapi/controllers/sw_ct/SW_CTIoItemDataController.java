package com.osrapi.controllers.sw_ct;

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

import com.osrapi.models.sw_ct.SW_CTIoItemDataEntity;
import com.osrapi.models.sw_ct.SW_CTDiceEntity;
import com.osrapi.models.sw_ct.SW_CTGroupEntity;
import com.osrapi.models.sw_ct.SW_CTObjectTypeEntity;

import com.osrapi.repositories.sw_ct.SW_CTIoItemDataRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/io_item_data")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTIoItemDataController {
    /** the static instance of {@link SW_CTIoItemDataController}. */
    private static SW_CTIoItemDataController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTIoItemDataController}
     */
    public static SW_CTIoItemDataController getInstance() {
        if (instance == null) {
            new SW_CTIoItemDataController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTIoItemDataRepository repository;
    /** Creates a new instance of {@link SW_CTIoItemDataController}. */
    public SW_CTIoItemDataController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getAll() {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTIoItemDataEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getById(
            @PathVariable final Long id) {
        SW_CTIoItemDataEntity entity = repository.findOne(id);
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        resources.add(getIoItemDataResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTIoItemDataEntity}.
     * @param entity the {@link SW_CTIoItemDataEntity}
     * @return {@link Resource}<{@link SW_CTIoItemDataEntity}>
     */
    private Resource<SW_CTIoItemDataEntity> getIoItemDataResource(
            final SW_CTIoItemDataEntity entity) {
        Resource<SW_CTIoItemDataEntity> resource =
                new Resource<SW_CTIoItemDataEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTIoItemDataEntity}s.
     * @param entities the list of {@link SW_CTIoItemDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTIoItemDataEntity>> save(
            @RequestBody final List<SW_CTIoItemDataEntity> entities) {
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        Iterator<SW_CTIoItemDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTIoItemDataEntity}.
     * @param entity the {@link SW_CTIoItemDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTIoItemDataEntity>> save(
            @RequestBody final SW_CTIoItemDataEntity entity) {
        if (entity.getGroups() != null
                && !entity.getGroups().isEmpty()) {
            for (int i = entity.getGroups().size() - 1; i >= 0; i--) {
                SW_CTGroupEntity groups = null;
                List<Resource<SW_CTGroupEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = SW_CTGroupController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = SW_CTGroupEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getGroups().get(i)) != null) {
                            list = (List<Resource<SW_CTGroupEntity>>) method
                                    .invoke(
                                            SW_CTGroupController.getInstance(),
                                            (String) field.get(entity.getGroups().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = SW_CTGroupController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = SW_CTGroupEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getGroups().get(i)) != null) {
                                list = (List<Resource<SW_CTGroupEntity>>) method
                                        .invoke(
                                                SW_CTGroupController
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
                    groups = (SW_CTGroupEntity) ((Resource) SW_CTGroupController
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
                SW_CTObjectTypeEntity types = null;
                List<Resource<SW_CTObjectTypeEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = SW_CTObjectTypeController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = SW_CTObjectTypeEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getTypes().get(i)) != null) {
                            list = (List<Resource<SW_CTObjectTypeEntity>>) method
                                    .invoke(
                                            SW_CTObjectTypeController.getInstance(),
                                            (String) field.get(entity.getTypes().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = SW_CTObjectTypeController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = SW_CTObjectTypeEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getTypes().get(i)) != null) {
                                list = (List<Resource<SW_CTObjectTypeEntity>>) method
                                        .invoke(
                                                SW_CTObjectTypeController
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
                    types = (SW_CTObjectTypeEntity) ((Resource) SW_CTObjectTypeController
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


    
        SW_CTIoItemDataEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTIoItemDataEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTIoItemDataEntity} instance
     */
    private void setIdFromRepository(final SW_CTIoItemDataEntity entity) {
        List<SW_CTIoItemDataEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTIoItemDataEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTIoItemDataEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTIoItemDataEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTIoItemDataEntity>) method.invoke(
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
     * Updates multiple {@link SW_CTIoItemDataEntity}s.
     * @param entities the list of {@link SW_CTIoItemDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTIoItemDataEntity>> update(
            @RequestBody final List<SW_CTIoItemDataEntity> entities) {
        List<Resource<SW_CTIoItemDataEntity>> resources = new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        Iterator<SW_CTIoItemDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTIoItemDataEntity}.
     * @param entity the {@link SW_CTIoItemDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTIoItemDataEntity>> update(
            @RequestBody final SW_CTIoItemDataEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
        if (entity.getGroups() != null
                && !entity.getGroups().isEmpty()) {
            for (int i = entity.getGroups().size() - 1; i >= 0; i--) {
                SW_CTGroupEntity groups = null;
                List<Resource<SW_CTGroupEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = SW_CTGroupController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = SW_CTGroupEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getGroups().get(i)) != null) {
                            list = (List<Resource<SW_CTGroupEntity>>) method
                                    .invoke(
                                            SW_CTGroupController.getInstance(),
                                            (String) field.get(entity.getGroups().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = SW_CTGroupController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = SW_CTGroupEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getGroups().get(i)) != null) {
                                list = (List<Resource<SW_CTGroupEntity>>) method
                                        .invoke(
                                                SW_CTGroupController
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
                    groups = (SW_CTGroupEntity) ((Resource) SW_CTGroupController
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
                SW_CTObjectTypeEntity types = null;
                List<Resource<SW_CTObjectTypeEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = SW_CTObjectTypeController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = SW_CTObjectTypeEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getTypes().get(i)) != null) {
                            list = (List<Resource<SW_CTObjectTypeEntity>>) method
                                    .invoke(
                                            SW_CTObjectTypeController.getInstance(),
                                            (String) field.get(entity.getTypes().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = SW_CTObjectTypeController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = SW_CTObjectTypeEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getTypes().get(i)) != null) {
                                list = (List<Resource<SW_CTObjectTypeEntity>>) method
                                        .invoke(
                                                SW_CTObjectTypeController
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
                    types = (SW_CTObjectTypeEntity) ((Resource) SW_CTObjectTypeController
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


    
        SW_CTIoItemDataEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTIoItemDataEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

  private void setDamagesIdFromRepository(
      final SW_CTIoItemDataEntity entity) {
    SW_CTDiceEntity memberEntity = null;
    List<Resource<SW_CTDiceEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = SW_CTDiceController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = SW_CTDiceEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getDamages()) != null) {
          list = (List<Resource<SW_CTDiceEntity>>) method
              .invoke(
                  SW_CTDiceController.getInstance(),
                  (String) field
                      .get(entity.getDamages()));
        }
      }
      if (list == null) {
        try {
          method = SW_CTDiceController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = SW_CTDiceEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getDamages()) != null) {
            list = (List<Resource<SW_CTDiceEntity>>)
                method.invoke(SW_CTDiceController
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
      memberEntity = (SW_CTDiceEntity)
          ((Resource) SW_CTDiceController.getInstance().save(
              entity.getDamages()).get(0)).getContent();
    }
    entity.setDamages(memberEntity);
    list = null;
    }


    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a count.
     * @param count the io_item_data' count
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "count/{count}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByCount(
            @PathVariable final Long count) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByCount(count)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a description.
     * @param description the io_item_data' description
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a foodValue.
     * @param foodValue the io_item_data' foodValue
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "food_value/{foodValue}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByFoodValue(
            @PathVariable final Long foodValue) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByFoodValue(foodValue)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a internalScript.
     * @param internalScript the io_item_data' internalScript
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "internal_script/{internalScript}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByInternalScript(
            @PathVariable final String internalScript) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByInternalScript(internalScript)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a leftRing.
     * @param leftRing the io_item_data' leftRing
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "left_ring/{leftRing}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByLeftRing(
            @PathVariable final Boolean leftRing) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByLeftRing(leftRing)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a lightValue.
     * @param lightValue the io_item_data' lightValue
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "light_value/{lightValue}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByLightValue(
            @PathVariable final Long lightValue) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByLightValue(lightValue)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a maxOwned.
     * @param maxOwned the io_item_data' maxOwned
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "max_owned/{maxOwned}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByMaxOwned(
            @PathVariable final Long maxOwned) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByMaxOwned(maxOwned)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a name.
     * @param name the io_item_data' name
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByName(
            @PathVariable final String name) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a price.
     * @param price the io_item_data' price
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "price/{price}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByPrice(
            @PathVariable final float price) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByPrice(price)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a ringType.
     * @param ringType the io_item_data' ringType
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "ring_type/{ringType}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByRingType(
            @PathVariable final Long ringType) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByRingType(ringType)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a stackSize.
     * @param stackSize the io_item_data' stackSize
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "stack_size/{stackSize}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByStackSize(
            @PathVariable final Long stackSize) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByStackSize(stackSize)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a stealValue.
     * @param stealValue the io_item_data' stealValue
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "steal_value/{stealValue}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByStealValue(
            @PathVariable final Long stealValue) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByStealValue(stealValue)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoItemDataEntity}s that share a weight.
     * @param weight the io_item_data' weight
     * @return {@link List}<{@link Resource}<{@link SW_CTIoItemDataEntity}>>
     */
    @RequestMapping(path = "weight/{weight}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoItemDataEntity>> getByWeight(
            @PathVariable final float weight) {
        Iterator<SW_CTIoItemDataEntity> iter = repository.findByWeight(weight)
                .iterator();
        List<Resource<SW_CTIoItemDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
