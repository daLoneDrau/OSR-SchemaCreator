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

import com.osrapi.models.sw_ct.SW_CTEventEntity;

import com.osrapi.repositories.sw_ct.SW_CTEventRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/events")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTEventController {
    /** the static instance of {@link SW_CTEventController}. */
    private static SW_CTEventController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTEventController}
     */
    public static SW_CTEventController getInstance() {
        if (instance == null) {
            new SW_CTEventController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTEventRepository repository;
    /** Creates a new instance of {@link SW_CTEventController}. */
    public SW_CTEventController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTEventEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTEventEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTEventEntity>> getAll() {
        Iterator<SW_CTEventEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTEventEntity>> resources =
                new ArrayList<Resource<SW_CTEventEntity>>();
        while (iter.hasNext()) {
            resources.add(getEventResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTEventEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTEventEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTEventEntity>> getById(
            @PathVariable final Long id) {
        SW_CTEventEntity entity = repository.findOne(id);
        List<Resource<SW_CTEventEntity>> resources =
                new ArrayList<Resource<SW_CTEventEntity>>();
        resources.add(getEventResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTEventEntity}.
     * @param entity the {@link SW_CTEventEntity}
     * @return {@link Resource}<{@link SW_CTEventEntity}>
     */
    private Resource<SW_CTEventEntity> getEventResource(
            final SW_CTEventEntity entity) {
        Resource<SW_CTEventEntity> resource =
                new Resource<SW_CTEventEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTEventEntity}s.
     * @param entities the list of {@link SW_CTEventEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTEventEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTEventEntity>> save(
            @RequestBody final List<SW_CTEventEntity> entities) {
        List<Resource<SW_CTEventEntity>> resources =
                new ArrayList<Resource<SW_CTEventEntity>>();
        Iterator<SW_CTEventEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTEventEntity}.
     * @param entity the {@link SW_CTEventEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTEventEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTEventEntity>> save(
            @RequestBody final SW_CTEventEntity entity) {
    
    
        SW_CTEventEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTEventEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTEventEntity} instance
     */
    private void setIdFromRepository(final SW_CTEventEntity entity) {
        List<SW_CTEventEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTEventEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SW_CTEventEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTEventEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTEventEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SW_CTEventEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTEventEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SW_CTEventEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SW_CTEventEntity}s.
     * @param entities the list of {@link SW_CTEventEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTEventEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTEventEntity>> update(
            @RequestBody final List<SW_CTEventEntity> entities) {
        List<Resource<SW_CTEventEntity>> resources = new ArrayList<Resource<SW_CTEventEntity>>();
        Iterator<SW_CTEventEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTEventEntity}.
     * @param entity the {@link SW_CTEventEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTEventEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTEventEntity>> update(
            @RequestBody final SW_CTEventEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTEventEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTEventEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTEventEntity}s that share a code.
     * @param code the event' code
     * @return {@link List}<{@link Resource}<{@link SW_CTEventEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTEventEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<SW_CTEventEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<SW_CTEventEntity>> resources =
                new ArrayList<Resource<SW_CTEventEntity>>();
        while (iter.hasNext()) {
            resources.add(getEventResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
