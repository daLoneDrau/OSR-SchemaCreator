package com.osrapi.controllers.tft;

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

import com.osrapi.models.tft.TFTDieEntity;

import com.osrapi.repositories.tft.TFTDieRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/tft/dies")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class TFTDieController {
    /** the static instance of {@link TFTDieController}. */
    private static TFTDieController instance;
    /**
     * Gets the static instance.
     * @return {@link TFTDieController}
     */
    public static TFTDieController getInstance() {
        if (instance == null) {
            new TFTDieController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private TFTDieRepository repository;
    /** Creates a new instance of {@link TFTDieController}. */
    public TFTDieController() {
        instance = this;
    }
    /**
     * Gets a list of {@link TFTDieEntity}s.
     * @return {@link List}<{@link Resource}<{@link TFTDieEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<TFTDieEntity>> getAll() {
        Iterator<TFTDieEntity> iter = repository.findAll()
                .iterator();
        List<Resource<TFTDieEntity>> resources =
                new ArrayList<Resource<TFTDieEntity>>();
        while (iter.hasNext()) {
            resources.add(getDieResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link TFTDieEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link TFTDieEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<TFTDieEntity>> getById(
            @PathVariable final Long id) {
        TFTDieEntity entity = repository.findOne(id);
        List<Resource<TFTDieEntity>> resources =
                new ArrayList<Resource<TFTDieEntity>>();
        resources.add(getDieResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link TFTDieEntity}.
     * @param entity the {@link TFTDieEntity}
     * @return {@link Resource}<{@link TFTDieEntity}>
     */
    private Resource<TFTDieEntity> getDieResource(
            final TFTDieEntity entity) {
        Resource<TFTDieEntity> resource =
                new Resource<TFTDieEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link TFTDieEntity}s.
     * @param entities the list of {@link TFTDieEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTDieEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<TFTDieEntity>> save(
            @RequestBody final List<TFTDieEntity> entities) {
        List<Resource<TFTDieEntity>> resources =
                new ArrayList<Resource<TFTDieEntity>>();
        Iterator<TFTDieEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link TFTDieEntity}.
     * @param entity the {@link TFTDieEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTDieEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<TFTDieEntity>> save(
            @RequestBody final TFTDieEntity entity) {
    
    
        TFTDieEntity savedEntity = repository.save(entity);
        List<Resource<TFTDieEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link TFTDieEntity} instance
     */
    private void setIdFromRepository(final TFTDieEntity entity) {
        List<TFTDieEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = TFTDieEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity TFTDieEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<TFTDieEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = TFTDieEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity TFTDieEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<TFTDieEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity TFTDieEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link TFTDieEntity}s.
     * @param entities the list of {@link TFTDieEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTDieEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<TFTDieEntity>> update(
            @RequestBody final List<TFTDieEntity> entities) {
        List<Resource<TFTDieEntity>> resources = new ArrayList<Resource<TFTDieEntity>>();
        Iterator<TFTDieEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link TFTDieEntity}.
     * @param entity the {@link TFTDieEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTDieEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<TFTDieEntity>> update(
            @RequestBody final TFTDieEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        TFTDieEntity savedEntity = repository.save(entity);
        List<Resource<TFTDieEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link TFTDieEntity}s that share a code.
     * @param code the die' code
     * @return {@link List}<{@link Resource}<{@link TFTDieEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<TFTDieEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<TFTDieEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<TFTDieEntity>> resources =
                new ArrayList<Resource<TFTDieEntity>>();
        while (iter.hasNext()) {
            resources.add(getDieResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTDieEntity}s that share a value.
     * @param value the die' value
     * @return {@link List}<{@link Resource}<{@link TFTDieEntity}>>
     */
    @RequestMapping(path = "value/{value}",
            method = RequestMethod.GET)
    public List<Resource<TFTDieEntity>> getByValue(
            @PathVariable final Long value) {
        Iterator<TFTDieEntity> iter = repository.findByValue(value)
                .iterator();
        List<Resource<TFTDieEntity>> resources =
                new ArrayList<Resource<TFTDieEntity>>();
        while (iter.hasNext()) {
            resources.add(getDieResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
