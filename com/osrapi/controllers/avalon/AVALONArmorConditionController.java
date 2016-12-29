package com.osrapi.controllers.avalon;

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

import com.osrapi.models.avalon.AVALONArmorConditionEntity;

import com.osrapi.repositories.avalon.AVALONArmorConditionRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/avalon/armor_conditions")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class AVALONArmorConditionController {
    /** the static instance of {@link AVALONArmorConditionController}. */
    private static AVALONArmorConditionController instance;
    /**
     * Gets the static instance.
     * @return {@link AVALONArmorConditionController}
     */
    public static AVALONArmorConditionController getInstance() {
        if (instance == null) {
            new AVALONArmorConditionController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private AVALONArmorConditionRepository repository;
    /** Creates a new instance of {@link AVALONArmorConditionController}. */
    public AVALONArmorConditionController() {
        instance = this;
    }
    /**
     * Gets a list of {@link AVALONArmorConditionEntity}s.
     * @return {@link List}<{@link Resource}<{@link AVALONArmorConditionEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<AVALONArmorConditionEntity>> getAll() {
        Iterator<AVALONArmorConditionEntity> iter = repository.findAll()
                .iterator();
        List<Resource<AVALONArmorConditionEntity>> resources =
                new ArrayList<Resource<AVALONArmorConditionEntity>>();
        while (iter.hasNext()) {
            resources.add(getArmorConditionResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link AVALONArmorConditionEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link AVALONArmorConditionEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<AVALONArmorConditionEntity>> getById(
            @PathVariable final Long id) {
        AVALONArmorConditionEntity entity = repository.findOne(id);
        List<Resource<AVALONArmorConditionEntity>> resources =
                new ArrayList<Resource<AVALONArmorConditionEntity>>();
        resources.add(getArmorConditionResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link AVALONArmorConditionEntity}.
     * @param entity the {@link AVALONArmorConditionEntity}
     * @return {@link Resource}<{@link AVALONArmorConditionEntity}>
     */
    private Resource<AVALONArmorConditionEntity> getArmorConditionResource(
            final AVALONArmorConditionEntity entity) {
        Resource<AVALONArmorConditionEntity> resource =
                new Resource<AVALONArmorConditionEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link AVALONArmorConditionEntity}s.
     * @param entities the list of {@link AVALONArmorConditionEntity} instances
     * @return {@link List}<{@link Resource}<{@link AVALONArmorConditionEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<AVALONArmorConditionEntity>> save(
            @RequestBody final List<AVALONArmorConditionEntity> entities) {
        List<Resource<AVALONArmorConditionEntity>> resources =
                new ArrayList<Resource<AVALONArmorConditionEntity>>();
        Iterator<AVALONArmorConditionEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link AVALONArmorConditionEntity}.
     * @param entity the {@link AVALONArmorConditionEntity} instance
     * @return {@link List}<{@link Resource}<{@link AVALONArmorConditionEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<AVALONArmorConditionEntity>> save(
            @RequestBody final AVALONArmorConditionEntity entity) {
    
    
        AVALONArmorConditionEntity savedEntity = repository.save(entity);
        List<Resource<AVALONArmorConditionEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link AVALONArmorConditionEntity} instance
     */
    private void setIdFromRepository(final AVALONArmorConditionEntity entity) {
        List<AVALONArmorConditionEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = AVALONArmorConditionEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<AVALONArmorConditionEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = AVALONArmorConditionEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<AVALONArmorConditionEntity>) method.invoke(
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
     * Updates multiple {@link AVALONArmorConditionEntity}s.
     * @param entities the list of {@link AVALONArmorConditionEntity} instances
     * @return {@link List}<{@link Resource}<{@link AVALONArmorConditionEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<AVALONArmorConditionEntity>> update(
            @RequestBody final List<AVALONArmorConditionEntity> entities) {
        List<Resource<AVALONArmorConditionEntity>> resources = new ArrayList<Resource<AVALONArmorConditionEntity>>();
        Iterator<AVALONArmorConditionEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link AVALONArmorConditionEntity}.
     * @param entity the {@link AVALONArmorConditionEntity} instance
     * @return {@link List}<{@link Resource}<{@link AVALONArmorConditionEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<AVALONArmorConditionEntity>> update(
            @RequestBody final AVALONArmorConditionEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        AVALONArmorConditionEntity savedEntity = repository.save(entity);
        List<Resource<AVALONArmorConditionEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link AVALONArmorConditionEntity}s that share a name.
     * @param name the armor_condition' name
     * @return {@link List}<{@link Resource}<{@link AVALONArmorConditionEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<AVALONArmorConditionEntity>> getByName(
            @PathVariable final String name) {
        Iterator<AVALONArmorConditionEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<AVALONArmorConditionEntity>> resources =
                new ArrayList<Resource<AVALONArmorConditionEntity>>();
        while (iter.hasNext()) {
            resources.add(getArmorConditionResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
