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

import com.osrapi.models.ll.LLDieEntity;

import com.osrapi.repositories.ll.LLDieRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/dies")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLDieController {
    /** the static instance of {@link LLDieController}. */
    private static LLDieController instance;
    /**
     * Gets the static instance.
     * @return {@link LLDieController}
     */
    public static LLDieController getInstance() {
        if (instance == null) {
            new LLDieController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLDieRepository repository;
    /** Creates a new instance of {@link LLDieController}. */
    public LLDieController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLDieEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLDieEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLDieEntity>> getAll() {
        Iterator<LLDieEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLDieEntity>> resources =
                new ArrayList<Resource<LLDieEntity>>();
        while (iter.hasNext()) {
            resources.add(getDieResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLDieEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLDieEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLDieEntity>> getById(
            @PathVariable final Long id) {
        LLDieEntity entity = repository.findOne(id);
        List<Resource<LLDieEntity>> resources =
                new ArrayList<Resource<LLDieEntity>>();
        resources.add(getDieResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLDieEntity}.
     * @param entity the {@link LLDieEntity}
     * @return {@link Resource}<{@link LLDieEntity}>
     */
    private Resource<LLDieEntity> getDieResource(
            final LLDieEntity entity) {
        Resource<LLDieEntity> resource =
                new Resource<LLDieEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLDieEntity}s.
     * @param entities the list of {@link LLDieEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLDieEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLDieEntity>> save(
            @RequestBody final List<LLDieEntity> entities) {
        List<Resource<LLDieEntity>> resources =
                new ArrayList<Resource<LLDieEntity>>();
        Iterator<LLDieEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLDieEntity}.
     * @param entity the {@link LLDieEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLDieEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLDieEntity>> save(
            @RequestBody final LLDieEntity entity) {
    
    
        LLDieEntity savedEntity = repository.save(entity);
        List<Resource<LLDieEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLDieEntity} instance
     */
    private void setIdFromRepository(final LLDieEntity entity) {
        List<LLDieEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLDieEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLDieEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLDieEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLDieEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLDieEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLDieEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLDieEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLDieEntity}s.
     * @param entities the list of {@link LLDieEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLDieEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLDieEntity>> update(
            @RequestBody final List<LLDieEntity> entities) {
        List<Resource<LLDieEntity>> resources = new ArrayList<Resource<LLDieEntity>>();
        Iterator<LLDieEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLDieEntity}.
     * @param entity the {@link LLDieEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLDieEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLDieEntity>> update(
            @RequestBody final LLDieEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        LLDieEntity savedEntity = repository.save(entity);
        List<Resource<LLDieEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLDieEntity}s that share a code.
     * @param code the die' code
     * @return {@link List}<{@link Resource}<{@link LLDieEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<LLDieEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<LLDieEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<LLDieEntity>> resources =
                new ArrayList<Resource<LLDieEntity>>();
        while (iter.hasNext()) {
            resources.add(getDieResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLDieEntity}s that share a value.
     * @param value the die' value
     * @return {@link List}<{@link Resource}<{@link LLDieEntity}>>
     */
    @RequestMapping(path = "value/{value}",
            method = RequestMethod.GET)
    public List<Resource<LLDieEntity>> getByValue(
            @PathVariable final Long value) {
        Iterator<LLDieEntity> iter = repository.findByValue(value)
                .iterator();
        List<Resource<LLDieEntity>> resources =
                new ArrayList<Resource<LLDieEntity>>();
        while (iter.hasNext()) {
            resources.add(getDieResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
