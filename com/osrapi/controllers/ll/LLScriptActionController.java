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

import com.osrapi.models.ll.LLScriptActionEntity;

import com.osrapi.repositories.ll.LLScriptActionRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/script_actions")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLScriptActionController {
    /** the static instance of {@link LLScriptActionController}. */
    private static LLScriptActionController instance;
    /**
     * Gets the static instance.
     * @return {@link LLScriptActionController}
     */
    public static LLScriptActionController getInstance() {
        if (instance == null) {
            new LLScriptActionController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLScriptActionRepository repository;
    /** Creates a new instance of {@link LLScriptActionController}. */
    public LLScriptActionController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLScriptActionEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLScriptActionEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLScriptActionEntity>> getAll() {
        Iterator<LLScriptActionEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLScriptActionEntity>> resources =
                new ArrayList<Resource<LLScriptActionEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptActionResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLScriptActionEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLScriptActionEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLScriptActionEntity>> getById(
            @PathVariable final Long id) {
        LLScriptActionEntity entity = repository.findOne(id);
        List<Resource<LLScriptActionEntity>> resources =
                new ArrayList<Resource<LLScriptActionEntity>>();
        resources.add(getScriptActionResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLScriptActionEntity}.
     * @param entity the {@link LLScriptActionEntity}
     * @return {@link Resource}<{@link LLScriptActionEntity}>
     */
    private Resource<LLScriptActionEntity> getScriptActionResource(
            final LLScriptActionEntity entity) {
        Resource<LLScriptActionEntity> resource =
                new Resource<LLScriptActionEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLScriptActionEntity}s.
     * @param entities the list of {@link LLScriptActionEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLScriptActionEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLScriptActionEntity>> save(
            @RequestBody final List<LLScriptActionEntity> entities) {
        List<Resource<LLScriptActionEntity>> resources =
                new ArrayList<Resource<LLScriptActionEntity>>();
        Iterator<LLScriptActionEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLScriptActionEntity}.
     * @param entity the {@link LLScriptActionEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLScriptActionEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLScriptActionEntity>> save(
            @RequestBody final LLScriptActionEntity entity) {
    
    
        LLScriptActionEntity savedEntity = repository.save(entity);
        List<Resource<LLScriptActionEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLScriptActionEntity} instance
     */
    private void setIdFromRepository(final LLScriptActionEntity entity) {
        List<LLScriptActionEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLScriptActionEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLScriptActionEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLScriptActionEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLScriptActionEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLScriptActionEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLScriptActionEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLScriptActionEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLScriptActionEntity}s.
     * @param entities the list of {@link LLScriptActionEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLScriptActionEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLScriptActionEntity>> update(
            @RequestBody final List<LLScriptActionEntity> entities) {
        List<Resource<LLScriptActionEntity>> resources = new ArrayList<Resource<LLScriptActionEntity>>();
        Iterator<LLScriptActionEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLScriptActionEntity}.
     * @param entity the {@link LLScriptActionEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLScriptActionEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLScriptActionEntity>> update(
            @RequestBody final LLScriptActionEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        LLScriptActionEntity savedEntity = repository.save(entity);
        List<Resource<LLScriptActionEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLScriptActionEntity}s that share a name.
     * @param name the script_action' name
     * @return {@link List}<{@link Resource}<{@link LLScriptActionEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<LLScriptActionEntity>> getByName(
            @PathVariable final String name) {
        Iterator<LLScriptActionEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<LLScriptActionEntity>> resources =
                new ArrayList<Resource<LLScriptActionEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptActionResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLScriptActionEntity}s that share a type.
     * @param type the script_action' type
     * @return {@link List}<{@link Resource}<{@link LLScriptActionEntity}>>
     */
    @RequestMapping(path = "type/{type}",
            method = RequestMethod.GET)
    public List<Resource<LLScriptActionEntity>> getByType(
            @PathVariable final String type) {
        Iterator<LLScriptActionEntity> iter = repository.findByType(type)
                .iterator();
        List<Resource<LLScriptActionEntity>> resources =
                new ArrayList<Resource<LLScriptActionEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptActionResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
