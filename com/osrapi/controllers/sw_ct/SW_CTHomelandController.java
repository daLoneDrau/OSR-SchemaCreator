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

import com.osrapi.models.sw_ct.SW_CTHomelandEntity;

import com.osrapi.repositories.sw_ct.SW_CTHomelandRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/homelands")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTHomelandController {
    /** the static instance of {@link SW_CTHomelandController}. */
    private static SW_CTHomelandController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTHomelandController}
     */
    public static SW_CTHomelandController getInstance() {
        if (instance == null) {
            new SW_CTHomelandController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTHomelandRepository repository;
    /** Creates a new instance of {@link SW_CTHomelandController}. */
    public SW_CTHomelandController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTHomelandEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTHomelandEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTHomelandEntity>> getAll() {
        Iterator<SW_CTHomelandEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTHomelandEntity>> resources =
                new ArrayList<Resource<SW_CTHomelandEntity>>();
        while (iter.hasNext()) {
            resources.add(getHomelandResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTHomelandEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTHomelandEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTHomelandEntity>> getById(
            @PathVariable final Long id) {
        SW_CTHomelandEntity entity = repository.findOne(id);
        List<Resource<SW_CTHomelandEntity>> resources =
                new ArrayList<Resource<SW_CTHomelandEntity>>();
        resources.add(getHomelandResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTHomelandEntity}.
     * @param entity the {@link SW_CTHomelandEntity}
     * @return {@link Resource}<{@link SW_CTHomelandEntity}>
     */
    private Resource<SW_CTHomelandEntity> getHomelandResource(
            final SW_CTHomelandEntity entity) {
        Resource<SW_CTHomelandEntity> resource =
                new Resource<SW_CTHomelandEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTHomelandEntity}s.
     * @param entities the list of {@link SW_CTHomelandEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTHomelandEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTHomelandEntity>> save(
            @RequestBody final List<SW_CTHomelandEntity> entities) {
        List<Resource<SW_CTHomelandEntity>> resources =
                new ArrayList<Resource<SW_CTHomelandEntity>>();
        Iterator<SW_CTHomelandEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTHomelandEntity}.
     * @param entity the {@link SW_CTHomelandEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTHomelandEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTHomelandEntity>> save(
            @RequestBody final SW_CTHomelandEntity entity) {
    
    
        SW_CTHomelandEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTHomelandEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTHomelandEntity} instance
     */
    private void setIdFromRepository(final SW_CTHomelandEntity entity) {
        List<SW_CTHomelandEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTHomelandEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SW_CTHomelandEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTHomelandEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTHomelandEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SW_CTHomelandEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTHomelandEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SW_CTHomelandEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SW_CTHomelandEntity}s.
     * @param entities the list of {@link SW_CTHomelandEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTHomelandEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTHomelandEntity>> update(
            @RequestBody final List<SW_CTHomelandEntity> entities) {
        List<Resource<SW_CTHomelandEntity>> resources = new ArrayList<Resource<SW_CTHomelandEntity>>();
        Iterator<SW_CTHomelandEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTHomelandEntity}.
     * @param entity the {@link SW_CTHomelandEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTHomelandEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTHomelandEntity>> update(
            @RequestBody final SW_CTHomelandEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTHomelandEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTHomelandEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTHomelandEntity}s that share a description.
     * @param description the homeland' description
     * @return {@link List}<{@link Resource}<{@link SW_CTHomelandEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTHomelandEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<SW_CTHomelandEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<SW_CTHomelandEntity>> resources =
                new ArrayList<Resource<SW_CTHomelandEntity>>();
        while (iter.hasNext()) {
            resources.add(getHomelandResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTHomelandEntity}s that share a name.
     * @param name the homeland' name
     * @return {@link List}<{@link Resource}<{@link SW_CTHomelandEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTHomelandEntity>> getByName(
            @PathVariable final String name) {
        Iterator<SW_CTHomelandEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<SW_CTHomelandEntity>> resources =
                new ArrayList<Resource<SW_CTHomelandEntity>>();
        while (iter.hasNext()) {
            resources.add(getHomelandResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
