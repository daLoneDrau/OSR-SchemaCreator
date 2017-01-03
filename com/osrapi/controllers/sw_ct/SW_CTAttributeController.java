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

import com.osrapi.models.sw_ct.SW_CTAttributeEntity;

import com.osrapi.repositories.sw_ct.SW_CTAttributeRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/attributes")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTAttributeController {
    /** the static instance of {@link SW_CTAttributeController}. */
    private static SW_CTAttributeController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTAttributeController}
     */
    public static SW_CTAttributeController getInstance() {
        if (instance == null) {
            new SW_CTAttributeController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTAttributeRepository repository;
    /** Creates a new instance of {@link SW_CTAttributeController}. */
    public SW_CTAttributeController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTAttributeEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTAttributeEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTAttributeEntity>> getAll() {
        Iterator<SW_CTAttributeEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTAttributeEntity>> resources =
                new ArrayList<Resource<SW_CTAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTAttributeEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTAttributeEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTAttributeEntity>> getById(
            @PathVariable final Long id) {
        SW_CTAttributeEntity entity = repository.findOne(id);
        List<Resource<SW_CTAttributeEntity>> resources =
                new ArrayList<Resource<SW_CTAttributeEntity>>();
        resources.add(getAttributeResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTAttributeEntity}.
     * @param entity the {@link SW_CTAttributeEntity}
     * @return {@link Resource}<{@link SW_CTAttributeEntity}>
     */
    private Resource<SW_CTAttributeEntity> getAttributeResource(
            final SW_CTAttributeEntity entity) {
        Resource<SW_CTAttributeEntity> resource =
                new Resource<SW_CTAttributeEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTAttributeEntity}s.
     * @param entities the list of {@link SW_CTAttributeEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTAttributeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTAttributeEntity>> save(
            @RequestBody final List<SW_CTAttributeEntity> entities) {
        List<Resource<SW_CTAttributeEntity>> resources =
                new ArrayList<Resource<SW_CTAttributeEntity>>();
        Iterator<SW_CTAttributeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTAttributeEntity}.
     * @param entity the {@link SW_CTAttributeEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTAttributeEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTAttributeEntity>> save(
            @RequestBody final SW_CTAttributeEntity entity) {
    
    
        SW_CTAttributeEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTAttributeEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTAttributeEntity} instance
     */
    private void setIdFromRepository(final SW_CTAttributeEntity entity) {
        List<SW_CTAttributeEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTAttributeEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTAttributeEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTAttributeEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTAttributeEntity>) method.invoke(
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
     * Updates multiple {@link SW_CTAttributeEntity}s.
     * @param entities the list of {@link SW_CTAttributeEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTAttributeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTAttributeEntity>> update(
            @RequestBody final List<SW_CTAttributeEntity> entities) {
        List<Resource<SW_CTAttributeEntity>> resources = new ArrayList<Resource<SW_CTAttributeEntity>>();
        Iterator<SW_CTAttributeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTAttributeEntity}.
     * @param entity the {@link SW_CTAttributeEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTAttributeEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTAttributeEntity>> update(
            @RequestBody final SW_CTAttributeEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTAttributeEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTAttributeEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTAttributeEntity}s that share a code.
     * @param code the attribute' code
     * @return {@link List}<{@link Resource}<{@link SW_CTAttributeEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTAttributeEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<SW_CTAttributeEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<SW_CTAttributeEntity>> resources =
                new ArrayList<Resource<SW_CTAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTAttributeEntity}s that share a description.
     * @param description the attribute' description
     * @return {@link List}<{@link Resource}<{@link SW_CTAttributeEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTAttributeEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<SW_CTAttributeEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<SW_CTAttributeEntity>> resources =
                new ArrayList<Resource<SW_CTAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTAttributeEntity}s that share a name.
     * @param name the attribute' name
     * @return {@link List}<{@link Resource}<{@link SW_CTAttributeEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTAttributeEntity>> getByName(
            @PathVariable final String name) {
        Iterator<SW_CTAttributeEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<SW_CTAttributeEntity>> resources =
                new ArrayList<Resource<SW_CTAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
