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

import com.osrapi.models.ll.LLObjectTypeEntity;

import com.osrapi.repositories.ll.LLObjectTypeRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/object_types")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLObjectTypeController {
    /** the static instance of {@link LLObjectTypeController}. */
    private static LLObjectTypeController instance;
    /**
     * Gets the static instance.
     * @return {@link LLObjectTypeController}
     */
    public static LLObjectTypeController getInstance() {
        if (instance == null) {
            new LLObjectTypeController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLObjectTypeRepository repository;
    /** Creates a new instance of {@link LLObjectTypeController}. */
    public LLObjectTypeController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLObjectTypeEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLObjectTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLObjectTypeEntity>> getAll() {
        Iterator<LLObjectTypeEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLObjectTypeEntity>> resources =
                new ArrayList<Resource<LLObjectTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getObjectTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLObjectTypeEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLObjectTypeEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLObjectTypeEntity>> getById(
            @PathVariable final Long id) {
        LLObjectTypeEntity entity = repository.findOne(id);
        List<Resource<LLObjectTypeEntity>> resources =
                new ArrayList<Resource<LLObjectTypeEntity>>();
        resources.add(getObjectTypeResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLObjectTypeEntity}.
     * @param entity the {@link LLObjectTypeEntity}
     * @return {@link Resource}<{@link LLObjectTypeEntity}>
     */
    private Resource<LLObjectTypeEntity> getObjectTypeResource(
            final LLObjectTypeEntity entity) {
        Resource<LLObjectTypeEntity> resource =
                new Resource<LLObjectTypeEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLObjectTypeEntity}s.
     * @param entities the list of {@link LLObjectTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLObjectTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLObjectTypeEntity>> save(
            @RequestBody final List<LLObjectTypeEntity> entities) {
        List<Resource<LLObjectTypeEntity>> resources =
                new ArrayList<Resource<LLObjectTypeEntity>>();
        Iterator<LLObjectTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLObjectTypeEntity}.
     * @param entity the {@link LLObjectTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLObjectTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLObjectTypeEntity>> save(
            @RequestBody final LLObjectTypeEntity entity) {
    
    
        LLObjectTypeEntity savedEntity = repository.save(entity);
        List<Resource<LLObjectTypeEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLObjectTypeEntity} instance
     */
    private void setIdFromRepository(final LLObjectTypeEntity entity) {
        List<LLObjectTypeEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLObjectTypeEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLObjectTypeEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLObjectTypeEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLObjectTypeEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLObjectTypeEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLObjectTypeEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLObjectTypeEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLObjectTypeEntity}s.
     * @param entities the list of {@link LLObjectTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLObjectTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLObjectTypeEntity>> update(
            @RequestBody final List<LLObjectTypeEntity> entities) {
        List<Resource<LLObjectTypeEntity>> resources = new ArrayList<Resource<LLObjectTypeEntity>>();
        Iterator<LLObjectTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLObjectTypeEntity}.
     * @param entity the {@link LLObjectTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLObjectTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLObjectTypeEntity>> update(
            @RequestBody final LLObjectTypeEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        LLObjectTypeEntity savedEntity = repository.save(entity);
        List<Resource<LLObjectTypeEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLObjectTypeEntity}s that share a code.
     * @param code the object_type' code
     * @return {@link List}<{@link Resource}<{@link LLObjectTypeEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<LLObjectTypeEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<LLObjectTypeEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<LLObjectTypeEntity>> resources =
                new ArrayList<Resource<LLObjectTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getObjectTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLObjectTypeEntity}s that share a flag.
     * @param flag the object_type' flag
     * @return {@link List}<{@link Resource}<{@link LLObjectTypeEntity}>>
     */
    @RequestMapping(path = "flag/{flag}",
            method = RequestMethod.GET)
    public List<Resource<LLObjectTypeEntity>> getByFlag(
            @PathVariable final Long flag) {
        Iterator<LLObjectTypeEntity> iter = repository.findByFlag(flag)
                .iterator();
        List<Resource<LLObjectTypeEntity>> resources =
                new ArrayList<Resource<LLObjectTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getObjectTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
