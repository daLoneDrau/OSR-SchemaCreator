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

import com.osrapi.models.ll.LLEventEntity;

import com.osrapi.repositories.ll.LLEventRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/events")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLEventController {
    /** the static instance of {@link LLEventController}. */
    private static LLEventController instance;
    /**
     * Gets the static instance.
     * @return {@link LLEventController}
     */
    public static LLEventController getInstance() {
        if (instance == null) {
            new LLEventController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLEventRepository repository;
    /** Creates a new instance of {@link LLEventController}. */
    public LLEventController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLEventEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLEventEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLEventEntity>> getAll() {
        Iterator<LLEventEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLEventEntity>> resources =
                new ArrayList<Resource<LLEventEntity>>();
        while (iter.hasNext()) {
            resources.add(getEventResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLEventEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLEventEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLEventEntity>> getById(
            @PathVariable final Long id) {
        LLEventEntity entity = repository.findOne(id);
        List<Resource<LLEventEntity>> resources =
                new ArrayList<Resource<LLEventEntity>>();
        resources.add(getEventResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLEventEntity}.
     * @param entity the {@link LLEventEntity}
     * @return {@link Resource}<{@link LLEventEntity}>
     */
    private Resource<LLEventEntity> getEventResource(
            final LLEventEntity entity) {
        Resource<LLEventEntity> resource =
                new Resource<LLEventEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLEventEntity}s.
     * @param entities the list of {@link LLEventEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLEventEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLEventEntity>> save(
            @RequestBody final List<LLEventEntity> entities) {
        List<Resource<LLEventEntity>> resources =
                new ArrayList<Resource<LLEventEntity>>();
        Iterator<LLEventEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLEventEntity}.
     * @param entity the {@link LLEventEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLEventEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLEventEntity>> save(
            @RequestBody final LLEventEntity entity) {
    
    
        LLEventEntity savedEntity = repository.save(entity);
        List<Resource<LLEventEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLEventEntity} instance
     */
    private void setIdFromRepository(final LLEventEntity entity) {
        List<LLEventEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLEventEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLEventEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLEventEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLEventEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLEventEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLEventEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLEventEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLEventEntity}s.
     * @param entities the list of {@link LLEventEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLEventEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLEventEntity>> update(
            @RequestBody final List<LLEventEntity> entities) {
        List<Resource<LLEventEntity>> resources = new ArrayList<Resource<LLEventEntity>>();
        Iterator<LLEventEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLEventEntity}.
     * @param entity the {@link LLEventEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLEventEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLEventEntity>> update(
            @RequestBody final LLEventEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        LLEventEntity savedEntity = repository.save(entity);
        List<Resource<LLEventEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLEventEntity}s that share a code.
     * @param code the event' code
     * @return {@link List}<{@link Resource}<{@link LLEventEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<LLEventEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<LLEventEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<LLEventEntity>> resources =
                new ArrayList<Resource<LLEventEntity>>();
        while (iter.hasNext()) {
            resources.add(getEventResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
