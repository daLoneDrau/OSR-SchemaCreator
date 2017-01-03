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

import com.osrapi.models.sw_ct.SW_CTObjectTypeEntity;

import com.osrapi.repositories.sw_ct.SW_CTObjectTypeRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/object_types")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTObjectTypeController {
    /** the static instance of {@link SW_CTObjectTypeController}. */
    private static SW_CTObjectTypeController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTObjectTypeController}
     */
    public static SW_CTObjectTypeController getInstance() {
        if (instance == null) {
            new SW_CTObjectTypeController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTObjectTypeRepository repository;
    /** Creates a new instance of {@link SW_CTObjectTypeController}. */
    public SW_CTObjectTypeController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTObjectTypeEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTObjectTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTObjectTypeEntity>> getAll() {
        Iterator<SW_CTObjectTypeEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTObjectTypeEntity>> resources =
                new ArrayList<Resource<SW_CTObjectTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getObjectTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTObjectTypeEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTObjectTypeEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTObjectTypeEntity>> getById(
            @PathVariable final Long id) {
        SW_CTObjectTypeEntity entity = repository.findOne(id);
        List<Resource<SW_CTObjectTypeEntity>> resources =
                new ArrayList<Resource<SW_CTObjectTypeEntity>>();
        resources.add(getObjectTypeResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTObjectTypeEntity}.
     * @param entity the {@link SW_CTObjectTypeEntity}
     * @return {@link Resource}<{@link SW_CTObjectTypeEntity}>
     */
    private Resource<SW_CTObjectTypeEntity> getObjectTypeResource(
            final SW_CTObjectTypeEntity entity) {
        Resource<SW_CTObjectTypeEntity> resource =
                new Resource<SW_CTObjectTypeEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTObjectTypeEntity}s.
     * @param entities the list of {@link SW_CTObjectTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTObjectTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTObjectTypeEntity>> save(
            @RequestBody final List<SW_CTObjectTypeEntity> entities) {
        List<Resource<SW_CTObjectTypeEntity>> resources =
                new ArrayList<Resource<SW_CTObjectTypeEntity>>();
        Iterator<SW_CTObjectTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTObjectTypeEntity}.
     * @param entity the {@link SW_CTObjectTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTObjectTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTObjectTypeEntity>> save(
            @RequestBody final SW_CTObjectTypeEntity entity) {
    
    
        SW_CTObjectTypeEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTObjectTypeEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTObjectTypeEntity} instance
     */
    private void setIdFromRepository(final SW_CTObjectTypeEntity entity) {
        List<SW_CTObjectTypeEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTObjectTypeEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTObjectTypeEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTObjectTypeEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTObjectTypeEntity>) method.invoke(
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
     * Updates multiple {@link SW_CTObjectTypeEntity}s.
     * @param entities the list of {@link SW_CTObjectTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTObjectTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTObjectTypeEntity>> update(
            @RequestBody final List<SW_CTObjectTypeEntity> entities) {
        List<Resource<SW_CTObjectTypeEntity>> resources = new ArrayList<Resource<SW_CTObjectTypeEntity>>();
        Iterator<SW_CTObjectTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTObjectTypeEntity}.
     * @param entity the {@link SW_CTObjectTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTObjectTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTObjectTypeEntity>> update(
            @RequestBody final SW_CTObjectTypeEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTObjectTypeEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTObjectTypeEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTObjectTypeEntity}s that share a code.
     * @param code the object_type' code
     * @return {@link List}<{@link Resource}<{@link SW_CTObjectTypeEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTObjectTypeEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<SW_CTObjectTypeEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<SW_CTObjectTypeEntity>> resources =
                new ArrayList<Resource<SW_CTObjectTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getObjectTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTObjectTypeEntity}s that share a flag.
     * @param flag the object_type' flag
     * @return {@link List}<{@link Resource}<{@link SW_CTObjectTypeEntity}>>
     */
    @RequestMapping(path = "flag/{flag}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTObjectTypeEntity>> getByFlag(
            @PathVariable final Long flag) {
        Iterator<SW_CTObjectTypeEntity> iter = repository.findByFlag(flag)
                .iterator();
        List<Resource<SW_CTObjectTypeEntity>> resources =
                new ArrayList<Resource<SW_CTObjectTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getObjectTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
