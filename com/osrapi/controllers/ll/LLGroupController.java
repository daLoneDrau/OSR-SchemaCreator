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

import com.osrapi.models.ll.LLGroupEntity;

import com.osrapi.repositories.ll.LLGroupRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/groups")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLGroupController {
    /** the static instance of {@link LLGroupController}. */
    private static LLGroupController instance;
    /**
     * Gets the static instance.
     * @return {@link LLGroupController}
     */
    public static LLGroupController getInstance() {
        if (instance == null) {
            new LLGroupController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLGroupRepository repository;
    /** Creates a new instance of {@link LLGroupController}. */
    public LLGroupController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLGroupEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLGroupEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLGroupEntity>> getAll() {
        Iterator<LLGroupEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLGroupEntity>> resources =
                new ArrayList<Resource<LLGroupEntity>>();
        while (iter.hasNext()) {
            resources.add(getGroupResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLGroupEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLGroupEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLGroupEntity>> getById(
            @PathVariable final Long id) {
        LLGroupEntity entity = repository.findOne(id);
        List<Resource<LLGroupEntity>> resources =
                new ArrayList<Resource<LLGroupEntity>>();
        resources.add(getGroupResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLGroupEntity}.
     * @param entity the {@link LLGroupEntity}
     * @return {@link Resource}<{@link LLGroupEntity}>
     */
    private Resource<LLGroupEntity> getGroupResource(
            final LLGroupEntity entity) {
        Resource<LLGroupEntity> resource =
                new Resource<LLGroupEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLGroupEntity}s.
     * @param entities the list of {@link LLGroupEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLGroupEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLGroupEntity>> save(
            @RequestBody final List<LLGroupEntity> entities) {
        List<Resource<LLGroupEntity>> resources =
                new ArrayList<Resource<LLGroupEntity>>();
        Iterator<LLGroupEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLGroupEntity}.
     * @param entity the {@link LLGroupEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLGroupEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLGroupEntity>> save(
            @RequestBody final LLGroupEntity entity) {
    
    
        LLGroupEntity savedEntity = repository.save(entity);
        List<Resource<LLGroupEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLGroupEntity} instance
     */
    private void setIdFromRepository(final LLGroupEntity entity) {
        List<LLGroupEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLGroupEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLGroupEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLGroupEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLGroupEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLGroupEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLGroupEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLGroupEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLGroupEntity}s.
     * @param entities the list of {@link LLGroupEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLGroupEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLGroupEntity>> update(
            @RequestBody final List<LLGroupEntity> entities) {
        List<Resource<LLGroupEntity>> resources = new ArrayList<Resource<LLGroupEntity>>();
        Iterator<LLGroupEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLGroupEntity}.
     * @param entity the {@link LLGroupEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLGroupEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLGroupEntity>> update(
            @RequestBody final LLGroupEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        LLGroupEntity savedEntity = repository.save(entity);
        List<Resource<LLGroupEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLGroupEntity}s that share a name.
     * @param name the group' name
     * @return {@link List}<{@link Resource}<{@link LLGroupEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<LLGroupEntity>> getByName(
            @PathVariable final String name) {
        Iterator<LLGroupEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<LLGroupEntity>> resources =
                new ArrayList<Resource<LLGroupEntity>>();
        while (iter.hasNext()) {
            resources.add(getGroupResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
