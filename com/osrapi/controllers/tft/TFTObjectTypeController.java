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

import com.osrapi.models.tft.TFTObjectTypeEntity;

import com.osrapi.repositories.tft.TFTObjectTypeRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/tft/object_types")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class TFTObjectTypeController {
    /** the static instance of {@link TFTObjectTypeController}. */
    private static TFTObjectTypeController instance;
    /**
     * Gets the static instance.
     * @return {@link TFTObjectTypeController}
     */
    public static TFTObjectTypeController getInstance() {
        if (instance == null) {
            new TFTObjectTypeController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private TFTObjectTypeRepository repository;
    /** Creates a new instance of {@link TFTObjectTypeController}. */
    public TFTObjectTypeController() {
        instance = this;
    }
    /**
     * Gets a list of {@link TFTObjectTypeEntity}s.
     * @return {@link List}<{@link Resource}<{@link TFTObjectTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<TFTObjectTypeEntity>> getAll() {
        Iterator<TFTObjectTypeEntity> iter = repository.findAll()
                .iterator();
        List<Resource<TFTObjectTypeEntity>> resources =
                new ArrayList<Resource<TFTObjectTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getObjectTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link TFTObjectTypeEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link TFTObjectTypeEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<TFTObjectTypeEntity>> getById(
            @PathVariable final Long id) {
        TFTObjectTypeEntity entity = repository.findOne(id);
        List<Resource<TFTObjectTypeEntity>> resources =
                new ArrayList<Resource<TFTObjectTypeEntity>>();
        resources.add(getObjectTypeResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link TFTObjectTypeEntity}.
     * @param entity the {@link TFTObjectTypeEntity}
     * @return {@link Resource}<{@link TFTObjectTypeEntity}>
     */
    private Resource<TFTObjectTypeEntity> getObjectTypeResource(
            final TFTObjectTypeEntity entity) {
        Resource<TFTObjectTypeEntity> resource =
                new Resource<TFTObjectTypeEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link TFTObjectTypeEntity}s.
     * @param entities the list of {@link TFTObjectTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTObjectTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<TFTObjectTypeEntity>> save(
            @RequestBody final List<TFTObjectTypeEntity> entities) {
        List<Resource<TFTObjectTypeEntity>> resources =
                new ArrayList<Resource<TFTObjectTypeEntity>>();
        Iterator<TFTObjectTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link TFTObjectTypeEntity}.
     * @param entity the {@link TFTObjectTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTObjectTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<TFTObjectTypeEntity>> save(
            @RequestBody final TFTObjectTypeEntity entity) {
    
    
        TFTObjectTypeEntity savedEntity = repository.save(entity);
        List<Resource<TFTObjectTypeEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link TFTObjectTypeEntity} instance
     */
    private void setIdFromRepository(final TFTObjectTypeEntity entity) {
        List<TFTObjectTypeEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = TFTObjectTypeEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity TFTObjectTypeEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<TFTObjectTypeEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = TFTObjectTypeEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity TFTObjectTypeEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<TFTObjectTypeEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity TFTObjectTypeEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link TFTObjectTypeEntity}s.
     * @param entities the list of {@link TFTObjectTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTObjectTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<TFTObjectTypeEntity>> update(
            @RequestBody final List<TFTObjectTypeEntity> entities) {
        List<Resource<TFTObjectTypeEntity>> resources = new ArrayList<Resource<TFTObjectTypeEntity>>();
        Iterator<TFTObjectTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link TFTObjectTypeEntity}.
     * @param entity the {@link TFTObjectTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTObjectTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<TFTObjectTypeEntity>> update(
            @RequestBody final TFTObjectTypeEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        TFTObjectTypeEntity savedEntity = repository.save(entity);
        List<Resource<TFTObjectTypeEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link TFTObjectTypeEntity}s that share a code.
     * @param code the object_type' code
     * @return {@link List}<{@link Resource}<{@link TFTObjectTypeEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<TFTObjectTypeEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<TFTObjectTypeEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<TFTObjectTypeEntity>> resources =
                new ArrayList<Resource<TFTObjectTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getObjectTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTObjectTypeEntity}s that share a flag.
     * @param flag the object_type' flag
     * @return {@link List}<{@link Resource}<{@link TFTObjectTypeEntity}>>
     */
    @RequestMapping(path = "flag/{flag}",
            method = RequestMethod.GET)
    public List<Resource<TFTObjectTypeEntity>> getByFlag(
            @PathVariable final Long flag) {
        Iterator<TFTObjectTypeEntity> iter = repository.findByFlag(flag)
                .iterator();
        List<Resource<TFTObjectTypeEntity>> resources =
                new ArrayList<Resource<TFTObjectTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getObjectTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
