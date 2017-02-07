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

import com.osrapi.models.ll.LLScriptActionTypeEntity;

import com.osrapi.repositories.ll.LLScriptActionTypeRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/script_action_types")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLScriptActionTypeController {
    /** the static instance of {@link LLScriptActionTypeController}. */
    private static LLScriptActionTypeController instance;
    /**
     * Gets the static instance.
     * @return {@link LLScriptActionTypeController}
     */
    public static LLScriptActionTypeController getInstance() {
        if (instance == null) {
            new LLScriptActionTypeController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLScriptActionTypeRepository repository;
    /** Creates a new instance of {@link LLScriptActionTypeController}. */
    public LLScriptActionTypeController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLScriptActionTypeEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLScriptActionTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLScriptActionTypeEntity>> getAll() {
        Iterator<LLScriptActionTypeEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLScriptActionTypeEntity>> resources =
                new ArrayList<Resource<LLScriptActionTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptActionTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLScriptActionTypeEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLScriptActionTypeEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLScriptActionTypeEntity>> getById(
            @PathVariable final Long id) {
        LLScriptActionTypeEntity entity = repository.findOne(id);
        List<Resource<LLScriptActionTypeEntity>> resources =
                new ArrayList<Resource<LLScriptActionTypeEntity>>();
        resources.add(getScriptActionTypeResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLScriptActionTypeEntity}.
     * @param entity the {@link LLScriptActionTypeEntity}
     * @return {@link Resource}<{@link LLScriptActionTypeEntity}>
     */
    private Resource<LLScriptActionTypeEntity> getScriptActionTypeResource(
            final LLScriptActionTypeEntity entity) {
        Resource<LLScriptActionTypeEntity> resource =
                new Resource<LLScriptActionTypeEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLScriptActionTypeEntity}s.
     * @param entities the list of {@link LLScriptActionTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLScriptActionTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLScriptActionTypeEntity>> save(
            @RequestBody final List<LLScriptActionTypeEntity> entities) {
        List<Resource<LLScriptActionTypeEntity>> resources =
                new ArrayList<Resource<LLScriptActionTypeEntity>>();
        Iterator<LLScriptActionTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLScriptActionTypeEntity}.
     * @param entity the {@link LLScriptActionTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLScriptActionTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLScriptActionTypeEntity>> save(
            @RequestBody final LLScriptActionTypeEntity entity) {
    
    
        LLScriptActionTypeEntity savedEntity = repository.save(entity);
        List<Resource<LLScriptActionTypeEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLScriptActionTypeEntity} instance
     */
    private void setIdFromRepository(final LLScriptActionTypeEntity entity) {
        List<LLScriptActionTypeEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLScriptActionTypeEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLScriptActionTypeEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLScriptActionTypeEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLScriptActionTypeEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLScriptActionTypeEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLScriptActionTypeEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLScriptActionTypeEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLScriptActionTypeEntity}s.
     * @param entities the list of {@link LLScriptActionTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLScriptActionTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLScriptActionTypeEntity>> update(
            @RequestBody final List<LLScriptActionTypeEntity> entities) {
        List<Resource<LLScriptActionTypeEntity>> resources = new ArrayList<Resource<LLScriptActionTypeEntity>>();
        Iterator<LLScriptActionTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLScriptActionTypeEntity}.
     * @param entity the {@link LLScriptActionTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLScriptActionTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLScriptActionTypeEntity>> update(
            @RequestBody final LLScriptActionTypeEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        LLScriptActionTypeEntity savedEntity = repository.save(entity);
        List<Resource<LLScriptActionTypeEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLScriptActionTypeEntity}s that share a code.
     * @param code the script_action_type' code
     * @return {@link List}<{@link Resource}<{@link LLScriptActionTypeEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<LLScriptActionTypeEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<LLScriptActionTypeEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<LLScriptActionTypeEntity>> resources =
                new ArrayList<Resource<LLScriptActionTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptActionTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
