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

import com.osrapi.models.sw_ct.SW_CTGenderEntity;

import com.osrapi.repositories.sw_ct.SW_CTGenderRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/genders")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTGenderController {
    /** the static instance of {@link SW_CTGenderController}. */
    private static SW_CTGenderController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTGenderController}
     */
    public static SW_CTGenderController getInstance() {
        if (instance == null) {
            new SW_CTGenderController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTGenderRepository repository;
    /** Creates a new instance of {@link SW_CTGenderController}. */
    public SW_CTGenderController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTGenderEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTGenderEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTGenderEntity>> getAll() {
        Iterator<SW_CTGenderEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTGenderEntity>> resources =
                new ArrayList<Resource<SW_CTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTGenderEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTGenderEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTGenderEntity>> getById(
            @PathVariable final Long id) {
        SW_CTGenderEntity entity = repository.findOne(id);
        List<Resource<SW_CTGenderEntity>> resources =
                new ArrayList<Resource<SW_CTGenderEntity>>();
        resources.add(getGenderResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTGenderEntity}.
     * @param entity the {@link SW_CTGenderEntity}
     * @return {@link Resource}<{@link SW_CTGenderEntity}>
     */
    private Resource<SW_CTGenderEntity> getGenderResource(
            final SW_CTGenderEntity entity) {
        Resource<SW_CTGenderEntity> resource =
                new Resource<SW_CTGenderEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTGenderEntity}s.
     * @param entities the list of {@link SW_CTGenderEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTGenderEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTGenderEntity>> save(
            @RequestBody final List<SW_CTGenderEntity> entities) {
        List<Resource<SW_CTGenderEntity>> resources =
                new ArrayList<Resource<SW_CTGenderEntity>>();
        Iterator<SW_CTGenderEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTGenderEntity}.
     * @param entity the {@link SW_CTGenderEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTGenderEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTGenderEntity>> save(
            @RequestBody final SW_CTGenderEntity entity) {
    
    
        SW_CTGenderEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTGenderEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTGenderEntity} instance
     */
    private void setIdFromRepository(final SW_CTGenderEntity entity) {
        List<SW_CTGenderEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTGenderEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SW_CTGenderEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTGenderEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTGenderEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SW_CTGenderEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTGenderEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SW_CTGenderEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SW_CTGenderEntity}s.
     * @param entities the list of {@link SW_CTGenderEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTGenderEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTGenderEntity>> update(
            @RequestBody final List<SW_CTGenderEntity> entities) {
        List<Resource<SW_CTGenderEntity>> resources = new ArrayList<Resource<SW_CTGenderEntity>>();
        Iterator<SW_CTGenderEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTGenderEntity}.
     * @param entity the {@link SW_CTGenderEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTGenderEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTGenderEntity>> update(
            @RequestBody final SW_CTGenderEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTGenderEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTGenderEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTGenderEntity}s that share a description.
     * @param description the gender' description
     * @return {@link List}<{@link Resource}<{@link SW_CTGenderEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTGenderEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<SW_CTGenderEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<SW_CTGenderEntity>> resources =
                new ArrayList<Resource<SW_CTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTGenderEntity}s that share a name.
     * @param name the gender' name
     * @return {@link List}<{@link Resource}<{@link SW_CTGenderEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTGenderEntity>> getByName(
            @PathVariable final String name) {
        Iterator<SW_CTGenderEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<SW_CTGenderEntity>> resources =
                new ArrayList<Resource<SW_CTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
