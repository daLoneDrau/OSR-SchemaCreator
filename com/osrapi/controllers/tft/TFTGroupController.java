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

import com.osrapi.models.tft.TFTGroupEntity;

import com.osrapi.repositories.tft.TFTGroupRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/tft/groups")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class TFTGroupController {
    /** the static instance of {@link TFTGroupController}. */
    private static TFTGroupController instance;
    /**
     * Gets the static instance.
     * @return {@link TFTGroupController}
     */
    public static TFTGroupController getInstance() {
        if (instance == null) {
            new TFTGroupController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private TFTGroupRepository repository;
    /** Creates a new instance of {@link TFTGroupController}. */
    public TFTGroupController() {
        instance = this;
    }
    /**
     * Gets a list of {@link TFTGroupEntity}s.
     * @return {@link List}<{@link Resource}<{@link TFTGroupEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<TFTGroupEntity>> getAll() {
        Iterator<TFTGroupEntity> iter = repository.findAll()
                .iterator();
        List<Resource<TFTGroupEntity>> resources =
                new ArrayList<Resource<TFTGroupEntity>>();
        while (iter.hasNext()) {
            resources.add(getGroupResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link TFTGroupEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link TFTGroupEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<TFTGroupEntity>> getById(
            @PathVariable final Long id) {
        TFTGroupEntity entity = repository.findOne(id);
        List<Resource<TFTGroupEntity>> resources =
                new ArrayList<Resource<TFTGroupEntity>>();
        resources.add(getGroupResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link TFTGroupEntity}.
     * @param entity the {@link TFTGroupEntity}
     * @return {@link Resource}<{@link TFTGroupEntity}>
     */
    private Resource<TFTGroupEntity> getGroupResource(
            final TFTGroupEntity entity) {
        Resource<TFTGroupEntity> resource =
                new Resource<TFTGroupEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link TFTGroupEntity}s.
     * @param entities the list of {@link TFTGroupEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTGroupEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<TFTGroupEntity>> save(
            @RequestBody final List<TFTGroupEntity> entities) {
        List<Resource<TFTGroupEntity>> resources =
                new ArrayList<Resource<TFTGroupEntity>>();
        Iterator<TFTGroupEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link TFTGroupEntity}.
     * @param entity the {@link TFTGroupEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTGroupEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<TFTGroupEntity>> save(
            @RequestBody final TFTGroupEntity entity) {
    
    
        TFTGroupEntity savedEntity = repository.save(entity);
        List<Resource<TFTGroupEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link TFTGroupEntity} instance
     */
    private void setIdFromRepository(final TFTGroupEntity entity) {
        List<TFTGroupEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = TFTGroupEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity TFTGroupEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<TFTGroupEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = TFTGroupEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity TFTGroupEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<TFTGroupEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity TFTGroupEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link TFTGroupEntity}s.
     * @param entities the list of {@link TFTGroupEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTGroupEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<TFTGroupEntity>> update(
            @RequestBody final List<TFTGroupEntity> entities) {
        List<Resource<TFTGroupEntity>> resources = new ArrayList<Resource<TFTGroupEntity>>();
        Iterator<TFTGroupEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link TFTGroupEntity}.
     * @param entity the {@link TFTGroupEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTGroupEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<TFTGroupEntity>> update(
            @RequestBody final TFTGroupEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        TFTGroupEntity savedEntity = repository.save(entity);
        List<Resource<TFTGroupEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link TFTGroupEntity}s that share a name.
     * @param name the group' name
     * @return {@link List}<{@link Resource}<{@link TFTGroupEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<TFTGroupEntity>> getByName(
            @PathVariable final String name) {
        Iterator<TFTGroupEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<TFTGroupEntity>> resources =
                new ArrayList<Resource<TFTGroupEntity>>();
        while (iter.hasNext()) {
            resources.add(getGroupResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
