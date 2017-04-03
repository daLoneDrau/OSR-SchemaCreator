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

import com.osrapi.models.tft.TFTAttributeEntity;

import com.osrapi.repositories.tft.TFTAttributeRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/tft/attributes")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class TFTAttributeController {
    /** the static instance of {@link TFTAttributeController}. */
    private static TFTAttributeController instance;
    /**
     * Gets the static instance.
     * @return {@link TFTAttributeController}
     */
    public static TFTAttributeController getInstance() {
        if (instance == null) {
            new TFTAttributeController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private TFTAttributeRepository repository;
    /** Creates a new instance of {@link TFTAttributeController}. */
    public TFTAttributeController() {
        instance = this;
    }
    /**
     * Gets a list of {@link TFTAttributeEntity}s.
     * @return {@link List}<{@link Resource}<{@link TFTAttributeEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<TFTAttributeEntity>> getAll() {
        Iterator<TFTAttributeEntity> iter = repository.findAll()
                .iterator();
        List<Resource<TFTAttributeEntity>> resources =
                new ArrayList<Resource<TFTAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link TFTAttributeEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link TFTAttributeEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<TFTAttributeEntity>> getById(
            @PathVariable final Long id) {
        TFTAttributeEntity entity = repository.findOne(id);
        List<Resource<TFTAttributeEntity>> resources =
                new ArrayList<Resource<TFTAttributeEntity>>();
        resources.add(getAttributeResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link TFTAttributeEntity}.
     * @param entity the {@link TFTAttributeEntity}
     * @return {@link Resource}<{@link TFTAttributeEntity}>
     */
    private Resource<TFTAttributeEntity> getAttributeResource(
            final TFTAttributeEntity entity) {
        Resource<TFTAttributeEntity> resource =
                new Resource<TFTAttributeEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link TFTAttributeEntity}s.
     * @param entities the list of {@link TFTAttributeEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTAttributeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<TFTAttributeEntity>> save(
            @RequestBody final List<TFTAttributeEntity> entities) {
        List<Resource<TFTAttributeEntity>> resources =
                new ArrayList<Resource<TFTAttributeEntity>>();
        Iterator<TFTAttributeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link TFTAttributeEntity}.
     * @param entity the {@link TFTAttributeEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTAttributeEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<TFTAttributeEntity>> save(
            @RequestBody final TFTAttributeEntity entity) {
    
    
        TFTAttributeEntity savedEntity = repository.save(entity);
        List<Resource<TFTAttributeEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link TFTAttributeEntity} instance
     */
    private void setIdFromRepository(final TFTAttributeEntity entity) {
        List<TFTAttributeEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = TFTAttributeEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity TFTAttributeEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<TFTAttributeEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = TFTAttributeEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity TFTAttributeEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<TFTAttributeEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity TFTAttributeEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link TFTAttributeEntity}s.
     * @param entities the list of {@link TFTAttributeEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTAttributeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<TFTAttributeEntity>> update(
            @RequestBody final List<TFTAttributeEntity> entities) {
        List<Resource<TFTAttributeEntity>> resources = new ArrayList<Resource<TFTAttributeEntity>>();
        Iterator<TFTAttributeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link TFTAttributeEntity}.
     * @param entity the {@link TFTAttributeEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTAttributeEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<TFTAttributeEntity>> update(
            @RequestBody final TFTAttributeEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        TFTAttributeEntity savedEntity = repository.save(entity);
        List<Resource<TFTAttributeEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link TFTAttributeEntity}s that share a code.
     * @param code the attribute' code
     * @return {@link List}<{@link Resource}<{@link TFTAttributeEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<TFTAttributeEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<TFTAttributeEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<TFTAttributeEntity>> resources =
                new ArrayList<Resource<TFTAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTAttributeEntity}s that share a description.
     * @param description the attribute' description
     * @return {@link List}<{@link Resource}<{@link TFTAttributeEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<TFTAttributeEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<TFTAttributeEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<TFTAttributeEntity>> resources =
                new ArrayList<Resource<TFTAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTAttributeEntity}s that share a name.
     * @param name the attribute' name
     * @return {@link List}<{@link Resource}<{@link TFTAttributeEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<TFTAttributeEntity>> getByName(
            @PathVariable final String name) {
        Iterator<TFTAttributeEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<TFTAttributeEntity>> resources =
                new ArrayList<Resource<TFTAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
