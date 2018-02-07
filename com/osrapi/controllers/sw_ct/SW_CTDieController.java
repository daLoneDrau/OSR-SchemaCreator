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

import com.osrapi.models.sw_ct.SW_CTDieEntity;

import com.osrapi.repositories.sw_ct.SW_CTDieRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/dies")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTDieController {
    /** the static instance of {@link SW_CTDieController}. */
    private static SW_CTDieController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTDieController}
     */
    public static SW_CTDieController getInstance() {
        if (instance == null) {
            new SW_CTDieController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTDieRepository repository;
    /** Creates a new instance of {@link SW_CTDieController}. */
    public SW_CTDieController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTDieEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTDieEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTDieEntity>> getAll() {
        Iterator<SW_CTDieEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTDieEntity>> resources =
                new ArrayList<Resource<SW_CTDieEntity>>();
        while (iter.hasNext()) {
            resources.add(getDieResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTDieEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTDieEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTDieEntity>> getById(
            @PathVariable final Long id) {
        SW_CTDieEntity entity = repository.findOne(id);
        List<Resource<SW_CTDieEntity>> resources =
                new ArrayList<Resource<SW_CTDieEntity>>();
        resources.add(getDieResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTDieEntity}.
     * @param entity the {@link SW_CTDieEntity}
     * @return {@link Resource}<{@link SW_CTDieEntity}>
     */
    private Resource<SW_CTDieEntity> getDieResource(
            final SW_CTDieEntity entity) {
        Resource<SW_CTDieEntity> resource =
                new Resource<SW_CTDieEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTDieEntity}s.
     * @param entities the list of {@link SW_CTDieEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTDieEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTDieEntity>> save(
            @RequestBody final List<SW_CTDieEntity> entities) {
        List<Resource<SW_CTDieEntity>> resources =
                new ArrayList<Resource<SW_CTDieEntity>>();
        Iterator<SW_CTDieEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTDieEntity}.
     * @param entity the {@link SW_CTDieEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTDieEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTDieEntity>> save(
            @RequestBody final SW_CTDieEntity entity) {
    
    
        SW_CTDieEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTDieEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTDieEntity} instance
     */
    private void setIdFromRepository(final SW_CTDieEntity entity) {
        List<SW_CTDieEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTDieEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SW_CTDieEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTDieEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTDieEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SW_CTDieEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTDieEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SW_CTDieEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SW_CTDieEntity}s.
     * @param entities the list of {@link SW_CTDieEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTDieEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTDieEntity>> update(
            @RequestBody final List<SW_CTDieEntity> entities) {
        List<Resource<SW_CTDieEntity>> resources = new ArrayList<Resource<SW_CTDieEntity>>();
        Iterator<SW_CTDieEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTDieEntity}.
     * @param entity the {@link SW_CTDieEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTDieEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTDieEntity>> update(
            @RequestBody final SW_CTDieEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTDieEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTDieEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTDieEntity}s that share a code.
     * @param code the die' code
     * @return {@link List}<{@link Resource}<{@link SW_CTDieEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTDieEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<SW_CTDieEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<SW_CTDieEntity>> resources =
                new ArrayList<Resource<SW_CTDieEntity>>();
        while (iter.hasNext()) {
            resources.add(getDieResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTDieEntity}s that share a value.
     * @param value the die' value
     * @return {@link List}<{@link Resource}<{@link SW_CTDieEntity}>>
     */
    @RequestMapping(path = "value/{value}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTDieEntity>> getByValue(
            @PathVariable final Long value) {
        Iterator<SW_CTDieEntity> iter = repository.findByValue(value)
                .iterator();
        List<Resource<SW_CTDieEntity>> resources =
                new ArrayList<Resource<SW_CTDieEntity>>();
        while (iter.hasNext()) {
            resources.add(getDieResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
