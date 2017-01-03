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

import com.osrapi.models.sw_ct.SW_CTGroupEntity;

import com.osrapi.repositories.sw_ct.SW_CTGroupRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/groups")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTGroupController {
    /** the static instance of {@link SW_CTGroupController}. */
    private static SW_CTGroupController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTGroupController}
     */
    public static SW_CTGroupController getInstance() {
        if (instance == null) {
            new SW_CTGroupController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTGroupRepository repository;
    /** Creates a new instance of {@link SW_CTGroupController}. */
    public SW_CTGroupController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTGroupEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTGroupEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTGroupEntity>> getAll() {
        Iterator<SW_CTGroupEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTGroupEntity>> resources =
                new ArrayList<Resource<SW_CTGroupEntity>>();
        while (iter.hasNext()) {
            resources.add(getGroupResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTGroupEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTGroupEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTGroupEntity>> getById(
            @PathVariable final Long id) {
        SW_CTGroupEntity entity = repository.findOne(id);
        List<Resource<SW_CTGroupEntity>> resources =
                new ArrayList<Resource<SW_CTGroupEntity>>();
        resources.add(getGroupResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTGroupEntity}.
     * @param entity the {@link SW_CTGroupEntity}
     * @return {@link Resource}<{@link SW_CTGroupEntity}>
     */
    private Resource<SW_CTGroupEntity> getGroupResource(
            final SW_CTGroupEntity entity) {
        Resource<SW_CTGroupEntity> resource =
                new Resource<SW_CTGroupEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTGroupEntity}s.
     * @param entities the list of {@link SW_CTGroupEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTGroupEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTGroupEntity>> save(
            @RequestBody final List<SW_CTGroupEntity> entities) {
        List<Resource<SW_CTGroupEntity>> resources =
                new ArrayList<Resource<SW_CTGroupEntity>>();
        Iterator<SW_CTGroupEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTGroupEntity}.
     * @param entity the {@link SW_CTGroupEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTGroupEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTGroupEntity>> save(
            @RequestBody final SW_CTGroupEntity entity) {
    
    
        SW_CTGroupEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTGroupEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTGroupEntity} instance
     */
    private void setIdFromRepository(final SW_CTGroupEntity entity) {
        List<SW_CTGroupEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTGroupEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTGroupEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTGroupEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTGroupEntity>) method.invoke(
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
     * Updates multiple {@link SW_CTGroupEntity}s.
     * @param entities the list of {@link SW_CTGroupEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTGroupEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTGroupEntity>> update(
            @RequestBody final List<SW_CTGroupEntity> entities) {
        List<Resource<SW_CTGroupEntity>> resources = new ArrayList<Resource<SW_CTGroupEntity>>();
        Iterator<SW_CTGroupEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTGroupEntity}.
     * @param entity the {@link SW_CTGroupEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTGroupEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTGroupEntity>> update(
            @RequestBody final SW_CTGroupEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTGroupEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTGroupEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTGroupEntity}s that share a name.
     * @param name the group' name
     * @return {@link List}<{@link Resource}<{@link SW_CTGroupEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTGroupEntity>> getByName(
            @PathVariable final String name) {
        Iterator<SW_CTGroupEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<SW_CTGroupEntity>> resources =
                new ArrayList<Resource<SW_CTGroupEntity>>();
        while (iter.hasNext()) {
            resources.add(getGroupResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
