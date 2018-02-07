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

import com.osrapi.models.sw_ct.SW_CTScriptActionEntity;

import com.osrapi.repositories.sw_ct.SW_CTScriptActionRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/script_actions")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTScriptActionController {
    /** the static instance of {@link SW_CTScriptActionController}. */
    private static SW_CTScriptActionController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTScriptActionController}
     */
    public static SW_CTScriptActionController getInstance() {
        if (instance == null) {
            new SW_CTScriptActionController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTScriptActionRepository repository;
    /** Creates a new instance of {@link SW_CTScriptActionController}. */
    public SW_CTScriptActionController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTScriptActionEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTScriptActionEntity>> getAll() {
        Iterator<SW_CTScriptActionEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTScriptActionEntity>> resources =
                new ArrayList<Resource<SW_CTScriptActionEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptActionResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTScriptActionEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTScriptActionEntity>> getById(
            @PathVariable final Long id) {
        SW_CTScriptActionEntity entity = repository.findOne(id);
        List<Resource<SW_CTScriptActionEntity>> resources =
                new ArrayList<Resource<SW_CTScriptActionEntity>>();
        resources.add(getScriptActionResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTScriptActionEntity}.
     * @param entity the {@link SW_CTScriptActionEntity}
     * @return {@link Resource}<{@link SW_CTScriptActionEntity}>
     */
    private Resource<SW_CTScriptActionEntity> getScriptActionResource(
            final SW_CTScriptActionEntity entity) {
        Resource<SW_CTScriptActionEntity> resource =
                new Resource<SW_CTScriptActionEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTScriptActionEntity}s.
     * @param entities the list of {@link SW_CTScriptActionEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTScriptActionEntity>> save(
            @RequestBody final List<SW_CTScriptActionEntity> entities) {
        List<Resource<SW_CTScriptActionEntity>> resources =
                new ArrayList<Resource<SW_CTScriptActionEntity>>();
        Iterator<SW_CTScriptActionEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTScriptActionEntity}.
     * @param entity the {@link SW_CTScriptActionEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTScriptActionEntity>> save(
            @RequestBody final SW_CTScriptActionEntity entity) {
    
    
        SW_CTScriptActionEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTScriptActionEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTScriptActionEntity} instance
     */
    private void setIdFromRepository(final SW_CTScriptActionEntity entity) {
        List<SW_CTScriptActionEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTScriptActionEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SW_CTScriptActionEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTScriptActionEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTScriptActionEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SW_CTScriptActionEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTScriptActionEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SW_CTScriptActionEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SW_CTScriptActionEntity}s.
     * @param entities the list of {@link SW_CTScriptActionEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTScriptActionEntity>> update(
            @RequestBody final List<SW_CTScriptActionEntity> entities) {
        List<Resource<SW_CTScriptActionEntity>> resources = new ArrayList<Resource<SW_CTScriptActionEntity>>();
        Iterator<SW_CTScriptActionEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTScriptActionEntity}.
     * @param entity the {@link SW_CTScriptActionEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTScriptActionEntity>> update(
            @RequestBody final SW_CTScriptActionEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTScriptActionEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTScriptActionEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTScriptActionEntity}s that share a name.
     * @param name the script_action' name
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTScriptActionEntity>> getByName(
            @PathVariable final String name) {
        Iterator<SW_CTScriptActionEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<SW_CTScriptActionEntity>> resources =
                new ArrayList<Resource<SW_CTScriptActionEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptActionResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTScriptActionEntity}s that share a type.
     * @param type the script_action' type
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionEntity}>>
     */
    @RequestMapping(path = "type/{type}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTScriptActionEntity>> getByType(
            @PathVariable final String type) {
        Iterator<SW_CTScriptActionEntity> iter = repository.findByType(type)
                .iterator();
        List<Resource<SW_CTScriptActionEntity>> resources =
                new ArrayList<Resource<SW_CTScriptActionEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptActionResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
