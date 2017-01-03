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

import com.osrapi.models.sw_ct.SW_CTSkillEntity;

import com.osrapi.repositories.sw_ct.SW_CTSkillRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/skills")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTSkillController {
    /** the static instance of {@link SW_CTSkillController}. */
    private static SW_CTSkillController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTSkillController}
     */
    public static SW_CTSkillController getInstance() {
        if (instance == null) {
            new SW_CTSkillController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTSkillRepository repository;
    /** Creates a new instance of {@link SW_CTSkillController}. */
    public SW_CTSkillController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTSkillEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTSkillEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTSkillEntity>> getAll() {
        Iterator<SW_CTSkillEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTSkillEntity>> resources =
                new ArrayList<Resource<SW_CTSkillEntity>>();
        while (iter.hasNext()) {
            resources.add(getSkillResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTSkillEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTSkillEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTSkillEntity>> getById(
            @PathVariable final Long id) {
        SW_CTSkillEntity entity = repository.findOne(id);
        List<Resource<SW_CTSkillEntity>> resources =
                new ArrayList<Resource<SW_CTSkillEntity>>();
        resources.add(getSkillResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTSkillEntity}.
     * @param entity the {@link SW_CTSkillEntity}
     * @return {@link Resource}<{@link SW_CTSkillEntity}>
     */
    private Resource<SW_CTSkillEntity> getSkillResource(
            final SW_CTSkillEntity entity) {
        Resource<SW_CTSkillEntity> resource =
                new Resource<SW_CTSkillEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTSkillEntity}s.
     * @param entities the list of {@link SW_CTSkillEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTSkillEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTSkillEntity>> save(
            @RequestBody final List<SW_CTSkillEntity> entities) {
        List<Resource<SW_CTSkillEntity>> resources =
                new ArrayList<Resource<SW_CTSkillEntity>>();
        Iterator<SW_CTSkillEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTSkillEntity}.
     * @param entity the {@link SW_CTSkillEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTSkillEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTSkillEntity>> save(
            @RequestBody final SW_CTSkillEntity entity) {
    
    
        SW_CTSkillEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTSkillEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTSkillEntity} instance
     */
    private void setIdFromRepository(final SW_CTSkillEntity entity) {
        List<SW_CTSkillEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTSkillEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTSkillEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTSkillEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTSkillEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
            e.printStackTrace();
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SW_CTSkillEntity}s.
     * @param entities the list of {@link SW_CTSkillEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTSkillEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTSkillEntity>> update(
            @RequestBody final List<SW_CTSkillEntity> entities) {
        List<Resource<SW_CTSkillEntity>> resources = new ArrayList<Resource<SW_CTSkillEntity>>();
        Iterator<SW_CTSkillEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTSkillEntity}.
     * @param entity the {@link SW_CTSkillEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTSkillEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTSkillEntity>> update(
            @RequestBody final SW_CTSkillEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTSkillEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTSkillEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTSkillEntity}s that share a description.
     * @param description the skill' description
     * @return {@link List}<{@link Resource}<{@link SW_CTSkillEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTSkillEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<SW_CTSkillEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<SW_CTSkillEntity>> resources =
                new ArrayList<Resource<SW_CTSkillEntity>>();
        while (iter.hasNext()) {
            resources.add(getSkillResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTSkillEntity}s that share a name.
     * @param name the skill' name
     * @return {@link List}<{@link Resource}<{@link SW_CTSkillEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTSkillEntity>> getByName(
            @PathVariable final String name) {
        Iterator<SW_CTSkillEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<SW_CTSkillEntity>> resources =
                new ArrayList<Resource<SW_CTSkillEntity>>();
        while (iter.hasNext()) {
            resources.add(getSkillResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
