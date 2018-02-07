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

import com.osrapi.models.sw_ct.SW_CTScriptActionTypeEntity;

import com.osrapi.repositories.sw_ct.SW_CTScriptActionTypeRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/script_action_types")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTScriptActionTypeController {
    /** the static instance of {@link SW_CTScriptActionTypeController}. */
    private static SW_CTScriptActionTypeController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTScriptActionTypeController}
     */
    public static SW_CTScriptActionTypeController getInstance() {
        if (instance == null) {
            new SW_CTScriptActionTypeController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTScriptActionTypeRepository repository;
    /** Creates a new instance of {@link SW_CTScriptActionTypeController}. */
    public SW_CTScriptActionTypeController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTScriptActionTypeEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTScriptActionTypeEntity>> getAll() {
        Iterator<SW_CTScriptActionTypeEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTScriptActionTypeEntity>> resources =
                new ArrayList<Resource<SW_CTScriptActionTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptActionTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTScriptActionTypeEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionTypeEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTScriptActionTypeEntity>> getById(
            @PathVariable final Long id) {
        SW_CTScriptActionTypeEntity entity = repository.findOne(id);
        List<Resource<SW_CTScriptActionTypeEntity>> resources =
                new ArrayList<Resource<SW_CTScriptActionTypeEntity>>();
        resources.add(getScriptActionTypeResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTScriptActionTypeEntity}.
     * @param entity the {@link SW_CTScriptActionTypeEntity}
     * @return {@link Resource}<{@link SW_CTScriptActionTypeEntity}>
     */
    private Resource<SW_CTScriptActionTypeEntity> getScriptActionTypeResource(
            final SW_CTScriptActionTypeEntity entity) {
        Resource<SW_CTScriptActionTypeEntity> resource =
                new Resource<SW_CTScriptActionTypeEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTScriptActionTypeEntity}s.
     * @param entities the list of {@link SW_CTScriptActionTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTScriptActionTypeEntity>> save(
            @RequestBody final List<SW_CTScriptActionTypeEntity> entities) {
        List<Resource<SW_CTScriptActionTypeEntity>> resources =
                new ArrayList<Resource<SW_CTScriptActionTypeEntity>>();
        Iterator<SW_CTScriptActionTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTScriptActionTypeEntity}.
     * @param entity the {@link SW_CTScriptActionTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTScriptActionTypeEntity>> save(
            @RequestBody final SW_CTScriptActionTypeEntity entity) {
    
    
        SW_CTScriptActionTypeEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTScriptActionTypeEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTScriptActionTypeEntity} instance
     */
    private void setIdFromRepository(final SW_CTScriptActionTypeEntity entity) {
        List<SW_CTScriptActionTypeEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTScriptActionTypeEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SW_CTScriptActionTypeEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTScriptActionTypeEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTScriptActionTypeEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SW_CTScriptActionTypeEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTScriptActionTypeEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SW_CTScriptActionTypeEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SW_CTScriptActionTypeEntity}s.
     * @param entities the list of {@link SW_CTScriptActionTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTScriptActionTypeEntity>> update(
            @RequestBody final List<SW_CTScriptActionTypeEntity> entities) {
        List<Resource<SW_CTScriptActionTypeEntity>> resources = new ArrayList<Resource<SW_CTScriptActionTypeEntity>>();
        Iterator<SW_CTScriptActionTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTScriptActionTypeEntity}.
     * @param entity the {@link SW_CTScriptActionTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTScriptActionTypeEntity>> update(
            @RequestBody final SW_CTScriptActionTypeEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTScriptActionTypeEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTScriptActionTypeEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTScriptActionTypeEntity}s that share a code.
     * @param code the script_action_type' code
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptActionTypeEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTScriptActionTypeEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<SW_CTScriptActionTypeEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<SW_CTScriptActionTypeEntity>> resources =
                new ArrayList<Resource<SW_CTScriptActionTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptActionTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
