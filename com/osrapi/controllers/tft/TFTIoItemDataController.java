package com.osrapi.controllers.tft;

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

import com.osrapi.models.tft.TFTIoItemDataEntity;
import com.osrapi.models.tft.TFTGroupEntity;
import com.osrapi.models.tft.TFTObjectTypeEntity;

import com.osrapi.repositories.tft.TFTIoItemDataRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/tft/io_item_data")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class TFTIoItemDataController {
    /** the static instance of {@link TFTIoItemDataController}. */
    private static TFTIoItemDataController instance;
    /**
     * Gets the static instance.
     * @return {@link TFTIoItemDataController}
     */
    public static TFTIoItemDataController getInstance() {
        if (instance == null) {
            new TFTIoItemDataController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private TFTIoItemDataRepository repository;
    /** Creates a new instance of {@link TFTIoItemDataController}. */
    public TFTIoItemDataController() {
        instance = this;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s.
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getAll() {
        Iterator<TFTIoItemDataEntity> iter = repository.findAll()
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link TFTIoItemDataEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getById(
            @PathVariable final Long id) {
        TFTIoItemDataEntity entity = repository.findOne(id);
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        resources.add(getIoItemDataResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link TFTIoItemDataEntity}.
     * @param entity the {@link TFTIoItemDataEntity}
     * @return {@link Resource}<{@link TFTIoItemDataEntity}>
     */
    private Resource<TFTIoItemDataEntity> getIoItemDataResource(
            final TFTIoItemDataEntity entity) {
        Resource<TFTIoItemDataEntity> resource =
                new Resource<TFTIoItemDataEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link TFTIoItemDataEntity}s.
     * @param entities the list of {@link TFTIoItemDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<TFTIoItemDataEntity>> save(
            @RequestBody final List<TFTIoItemDataEntity> entities) {
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        Iterator<TFTIoItemDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link TFTIoItemDataEntity}.
     * @param entity the {@link TFTIoItemDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<TFTIoItemDataEntity>> save(
            @RequestBody final TFTIoItemDataEntity entity) {
        if (entity.getGroups() != null
                && !entity.getGroups().isEmpty()) {
            for (int i = entity.getGroups().size() - 1; i >= 0; i--) {
                TFTGroupEntity groups = null;
                List<Resource<TFTGroupEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = TFTGroupController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity TFTGroupEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = TFTGroupEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity TFTGroupEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getGroups().get(i)) != null) {
                            list = (List<Resource<TFTGroupEntity>>) method
                                    .invoke(
                                            TFTGroupController.getInstance(),
                                            (String) field.get(entity.getGroups().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = TFTGroupController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity TFTGroupEntity from Controller by code");
            }
            try {
              field = TFTGroupEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity TFTGroupEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getGroups().get(i)) != null) {
                                list = (List<Resource<TFTGroupEntity>>) method
                                        .invoke(
                                                TFTGroupController
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
              System.out.println("CANNOT get embedded lookup Entity TFTGroupEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    groups = list.get(0).getContent();
                }
                if (groups == null) {
                    groups = (TFTGroupEntity) ((Resource) TFTGroupController
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
                TFTObjectTypeEntity types = null;
                List<Resource<TFTObjectTypeEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = TFTObjectTypeController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity TFTObjectTypeEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = TFTObjectTypeEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity TFTObjectTypeEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getTypes().get(i)) != null) {
                            list = (List<Resource<TFTObjectTypeEntity>>) method
                                    .invoke(
                                            TFTObjectTypeController.getInstance(),
                                            (String) field.get(entity.getTypes().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = TFTObjectTypeController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity TFTObjectTypeEntity from Controller by code");
            }
            try {
              field = TFTObjectTypeEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity TFTObjectTypeEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getTypes().get(i)) != null) {
                                list = (List<Resource<TFTObjectTypeEntity>>) method
                                        .invoke(
                                                TFTObjectTypeController
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
              System.out.println("CANNOT get embedded lookup Entity TFTObjectTypeEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    types = list.get(0).getContent();
                }
                if (types == null) {
                    types = (TFTObjectTypeEntity) ((Resource) TFTObjectTypeController
                            .getInstance()
                            .save(entity.getTypes().get(i)).get(0)).getContent();
                }
                entity.getTypes().set(i, types);
                list = null;
            }
        }


    
        TFTIoItemDataEntity savedEntity = repository.save(entity);
        List<Resource<TFTIoItemDataEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link TFTIoItemDataEntity} instance
     */
    private void setIdFromRepository(final TFTIoItemDataEntity entity) {
        List<TFTIoItemDataEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = TFTIoItemDataEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity TFTIoItemDataEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<TFTIoItemDataEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = TFTIoItemDataEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity TFTIoItemDataEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<TFTIoItemDataEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity TFTIoItemDataEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link TFTIoItemDataEntity}s.
     * @param entities the list of {@link TFTIoItemDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<TFTIoItemDataEntity>> update(
            @RequestBody final List<TFTIoItemDataEntity> entities) {
        List<Resource<TFTIoItemDataEntity>> resources = new ArrayList<Resource<TFTIoItemDataEntity>>();
        Iterator<TFTIoItemDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link TFTIoItemDataEntity}.
     * @param entity the {@link TFTIoItemDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<TFTIoItemDataEntity>> update(
            @RequestBody final TFTIoItemDataEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
        if (entity.getGroups() != null
                && !entity.getGroups().isEmpty()) {
            for (int i = entity.getGroups().size() - 1; i >= 0; i--) {
                TFTGroupEntity groups = null;
                List<Resource<TFTGroupEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = TFTGroupController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity TFTGroupEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = TFTGroupEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity TFTGroupEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getGroups().get(i)) != null) {
                            list = (List<Resource<TFTGroupEntity>>) method
                                    .invoke(
                                            TFTGroupController.getInstance(),
                                            (String) field.get(entity.getGroups().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = TFTGroupController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity TFTGroupEntity from Controller by code");
            }
            try {
              field = TFTGroupEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity TFTGroupEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getGroups().get(i)) != null) {
                                list = (List<Resource<TFTGroupEntity>>) method
                                        .invoke(
                                                TFTGroupController
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
              System.out.println("CANNOT get embedded lookup Entity TFTGroupEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    groups = list.get(0).getContent();
                }
                if (groups == null) {
                    groups = (TFTGroupEntity) ((Resource) TFTGroupController
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
                TFTObjectTypeEntity types = null;
                List<Resource<TFTObjectTypeEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = TFTObjectTypeController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity TFTObjectTypeEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = TFTObjectTypeEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity TFTObjectTypeEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getTypes().get(i)) != null) {
                            list = (List<Resource<TFTObjectTypeEntity>>) method
                                    .invoke(
                                            TFTObjectTypeController.getInstance(),
                                            (String) field.get(entity.getTypes().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = TFTObjectTypeController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity TFTObjectTypeEntity from Controller by code");
            }
            try {
              field = TFTObjectTypeEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity TFTObjectTypeEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getTypes().get(i)) != null) {
                                list = (List<Resource<TFTObjectTypeEntity>>) method
                                        .invoke(
                                                TFTObjectTypeController
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
              System.out.println("CANNOT get embedded lookup Entity TFTObjectTypeEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    types = list.get(0).getContent();
                }
                if (types == null) {
                    types = (TFTObjectTypeEntity) ((Resource) TFTObjectTypeController
                            .getInstance()
                            .save(entity.getTypes().get(i)).get(0)).getContent();
                }
                entity.getTypes().set(i, types);
                list = null;
            }
        }


    
        TFTIoItemDataEntity savedEntity = repository.save(entity);
        List<Resource<TFTIoItemDataEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a stRequirement.
     * @param stRequirement the io_item_data' stRequirement
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "st_requirement/{stRequirement}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByStRequirement(
            @PathVariable final Long stRequirement) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByStRequirement(stRequirement)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a count.
     * @param count the io_item_data' count
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "count/{count}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByCount(
            @PathVariable final Long count) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByCount(count)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a description.
     * @param description the io_item_data' description
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a foodValue.
     * @param foodValue the io_item_data' foodValue
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "food_value/{foodValue}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByFoodValue(
            @PathVariable final Long foodValue) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByFoodValue(foodValue)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a internalScript.
     * @param internalScript the io_item_data' internalScript
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "internal_script/{internalScript}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByInternalScript(
            @PathVariable final String internalScript) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByInternalScript(internalScript)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a leftRing.
     * @param leftRing the io_item_data' leftRing
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "left_ring/{leftRing}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByLeftRing(
            @PathVariable final Boolean leftRing) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByLeftRing(leftRing)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a lightValue.
     * @param lightValue the io_item_data' lightValue
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "light_value/{lightValue}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByLightValue(
            @PathVariable final Long lightValue) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByLightValue(lightValue)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a maxOwned.
     * @param maxOwned the io_item_data' maxOwned
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "max_owned/{maxOwned}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByMaxOwned(
            @PathVariable final Long maxOwned) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByMaxOwned(maxOwned)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a name.
     * @param name the io_item_data' name
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByName(
            @PathVariable final String name) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a price.
     * @param price the io_item_data' price
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "price/{price}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByPrice(
            @PathVariable final float price) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByPrice(price)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a ringType.
     * @param ringType the io_item_data' ringType
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "ring_type/{ringType}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByRingType(
            @PathVariable final Long ringType) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByRingType(ringType)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a stackSize.
     * @param stackSize the io_item_data' stackSize
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "stack_size/{stackSize}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByStackSize(
            @PathVariable final Long stackSize) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByStackSize(stackSize)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a stealValue.
     * @param stealValue the io_item_data' stealValue
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "steal_value/{stealValue}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByStealValue(
            @PathVariable final Long stealValue) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByStealValue(stealValue)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a title.
     * @param title the io_item_data' title
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "title/{title}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByTitle(
            @PathVariable final String title) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByTitle(title)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTIoItemDataEntity}s that share a weight.
     * @param weight the io_item_data' weight
     * @return {@link List}<{@link Resource}<{@link TFTIoItemDataEntity}>>
     */
    @RequestMapping(path = "weight/{weight}",
            method = RequestMethod.GET)
    public List<Resource<TFTIoItemDataEntity>> getByWeight(
            @PathVariable final float weight) {
        Iterator<TFTIoItemDataEntity> iter = repository.findByWeight(weight)
                .iterator();
        List<Resource<TFTIoItemDataEntity>> resources =
                new ArrayList<Resource<TFTIoItemDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoItemDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
