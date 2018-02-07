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

import com.osrapi.models.sw_ct.SW_CTBackgroundEntity;

import com.osrapi.repositories.sw_ct.SW_CTBackgroundRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/backgrounds")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTBackgroundController {
    /** the static instance of {@link SW_CTBackgroundController}. */
    private static SW_CTBackgroundController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTBackgroundController}
     */
    public static SW_CTBackgroundController getInstance() {
        if (instance == null) {
            new SW_CTBackgroundController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTBackgroundRepository repository;
    /** Creates a new instance of {@link SW_CTBackgroundController}. */
    public SW_CTBackgroundController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTBackgroundEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTBackgroundEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTBackgroundEntity>> getAll() {
        Iterator<SW_CTBackgroundEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTBackgroundEntity>> resources =
                new ArrayList<Resource<SW_CTBackgroundEntity>>();
        while (iter.hasNext()) {
            resources.add(getBackgroundResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTBackgroundEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTBackgroundEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTBackgroundEntity>> getById(
            @PathVariable final Long id) {
        SW_CTBackgroundEntity entity = repository.findOne(id);
        List<Resource<SW_CTBackgroundEntity>> resources =
                new ArrayList<Resource<SW_CTBackgroundEntity>>();
        resources.add(getBackgroundResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTBackgroundEntity}.
     * @param entity the {@link SW_CTBackgroundEntity}
     * @return {@link Resource}<{@link SW_CTBackgroundEntity}>
     */
    private Resource<SW_CTBackgroundEntity> getBackgroundResource(
            final SW_CTBackgroundEntity entity) {
        Resource<SW_CTBackgroundEntity> resource =
                new Resource<SW_CTBackgroundEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTBackgroundEntity}s.
     * @param entities the list of {@link SW_CTBackgroundEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTBackgroundEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTBackgroundEntity>> save(
            @RequestBody final List<SW_CTBackgroundEntity> entities) {
        List<Resource<SW_CTBackgroundEntity>> resources =
                new ArrayList<Resource<SW_CTBackgroundEntity>>();
        Iterator<SW_CTBackgroundEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTBackgroundEntity}.
     * @param entity the {@link SW_CTBackgroundEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTBackgroundEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTBackgroundEntity>> save(
            @RequestBody final SW_CTBackgroundEntity entity) {
    
    
        SW_CTBackgroundEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTBackgroundEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTBackgroundEntity} instance
     */
    private void setIdFromRepository(final SW_CTBackgroundEntity entity) {
        List<SW_CTBackgroundEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTBackgroundEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SW_CTBackgroundEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTBackgroundEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTBackgroundEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SW_CTBackgroundEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTBackgroundEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SW_CTBackgroundEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SW_CTBackgroundEntity}s.
     * @param entities the list of {@link SW_CTBackgroundEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTBackgroundEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTBackgroundEntity>> update(
            @RequestBody final List<SW_CTBackgroundEntity> entities) {
        List<Resource<SW_CTBackgroundEntity>> resources = new ArrayList<Resource<SW_CTBackgroundEntity>>();
        Iterator<SW_CTBackgroundEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTBackgroundEntity}.
     * @param entity the {@link SW_CTBackgroundEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTBackgroundEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTBackgroundEntity>> update(
            @RequestBody final SW_CTBackgroundEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTBackgroundEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTBackgroundEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTBackgroundEntity}s that share a description.
     * @param description the background' description
     * @return {@link List}<{@link Resource}<{@link SW_CTBackgroundEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTBackgroundEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<SW_CTBackgroundEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<SW_CTBackgroundEntity>> resources =
                new ArrayList<Resource<SW_CTBackgroundEntity>>();
        while (iter.hasNext()) {
            resources.add(getBackgroundResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTBackgroundEntity}s that share a homeland.
     * @param homeland the background' homeland
     * @return {@link List}<{@link Resource}<{@link SW_CTBackgroundEntity}>>
     */
    @RequestMapping(path = "homeland/{homeland}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTBackgroundEntity>> getByHomeland(
            @PathVariable final String homeland) {
        Iterator<SW_CTBackgroundEntity> iter = repository.findByHomeland(homeland)
                .iterator();
        List<Resource<SW_CTBackgroundEntity>> resources =
                new ArrayList<Resource<SW_CTBackgroundEntity>>();
        while (iter.hasNext()) {
            resources.add(getBackgroundResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTBackgroundEntity}s that share a name.
     * @param name the background' name
     * @return {@link List}<{@link Resource}<{@link SW_CTBackgroundEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTBackgroundEntity>> getByName(
            @PathVariable final String name) {
        Iterator<SW_CTBackgroundEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<SW_CTBackgroundEntity>> resources =
                new ArrayList<Resource<SW_CTBackgroundEntity>>();
        while (iter.hasNext()) {
            resources.add(getBackgroundResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
