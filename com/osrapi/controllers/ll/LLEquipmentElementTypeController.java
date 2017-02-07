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

import com.osrapi.models.ll.LLEquipmentElementTypeEntity;

import com.osrapi.repositories.ll.LLEquipmentElementTypeRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/equipment_element_types")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLEquipmentElementTypeController {
    /** the static instance of {@link LLEquipmentElementTypeController}. */
    private static LLEquipmentElementTypeController instance;
    /**
     * Gets the static instance.
     * @return {@link LLEquipmentElementTypeController}
     */
    public static LLEquipmentElementTypeController getInstance() {
        if (instance == null) {
            new LLEquipmentElementTypeController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLEquipmentElementTypeRepository repository;
    /** Creates a new instance of {@link LLEquipmentElementTypeController}. */
    public LLEquipmentElementTypeController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLEquipmentElementTypeEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLEquipmentElementTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLEquipmentElementTypeEntity>> getAll() {
        Iterator<LLEquipmentElementTypeEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<LLEquipmentElementTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentElementTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLEquipmentElementTypeEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLEquipmentElementTypeEntity>> getById(
            @PathVariable final Long id) {
        LLEquipmentElementTypeEntity entity = repository.findOne(id);
        List<Resource<LLEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<LLEquipmentElementTypeEntity>>();
        resources.add(getEquipmentElementTypeResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLEquipmentElementTypeEntity}.
     * @param entity the {@link LLEquipmentElementTypeEntity}
     * @return {@link Resource}<{@link LLEquipmentElementTypeEntity}>
     */
    private Resource<LLEquipmentElementTypeEntity> getEquipmentElementTypeResource(
            final LLEquipmentElementTypeEntity entity) {
        Resource<LLEquipmentElementTypeEntity> resource =
                new Resource<LLEquipmentElementTypeEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLEquipmentElementTypeEntity}s.
     * @param entities the list of {@link LLEquipmentElementTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLEquipmentElementTypeEntity>> save(
            @RequestBody final List<LLEquipmentElementTypeEntity> entities) {
        List<Resource<LLEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<LLEquipmentElementTypeEntity>>();
        Iterator<LLEquipmentElementTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLEquipmentElementTypeEntity}.
     * @param entity the {@link LLEquipmentElementTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLEquipmentElementTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLEquipmentElementTypeEntity>> save(
            @RequestBody final LLEquipmentElementTypeEntity entity) {
    
    
        LLEquipmentElementTypeEntity savedEntity = repository.save(entity);
        List<Resource<LLEquipmentElementTypeEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLEquipmentElementTypeEntity} instance
     */
    private void setIdFromRepository(final LLEquipmentElementTypeEntity entity) {
        List<LLEquipmentElementTypeEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLEquipmentElementTypeEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLEquipmentElementTypeEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLEquipmentElementTypeEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLEquipmentElementTypeEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLEquipmentElementTypeEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLEquipmentElementTypeEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLEquipmentElementTypeEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLEquipmentElementTypeEntity}s.
     * @param entities the list of {@link LLEquipmentElementTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLEquipmentElementTypeEntity>> update(
            @RequestBody final List<LLEquipmentElementTypeEntity> entities) {
        List<Resource<LLEquipmentElementTypeEntity>> resources = new ArrayList<Resource<LLEquipmentElementTypeEntity>>();
        Iterator<LLEquipmentElementTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLEquipmentElementTypeEntity}.
     * @param entity the {@link LLEquipmentElementTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLEquipmentElementTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLEquipmentElementTypeEntity>> update(
            @RequestBody final LLEquipmentElementTypeEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        LLEquipmentElementTypeEntity savedEntity = repository.save(entity);
        List<Resource<LLEquipmentElementTypeEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLEquipmentElementTypeEntity}s that share a code.
     * @param code the equipment_element_type' code
     * @return {@link List}<{@link Resource}<{@link LLEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<LLEquipmentElementTypeEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<LLEquipmentElementTypeEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<LLEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<LLEquipmentElementTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentElementTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLEquipmentElementTypeEntity}s that share a value.
     * @param value the equipment_element_type' value
     * @return {@link List}<{@link Resource}<{@link LLEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "value/{value}",
            method = RequestMethod.GET)
    public List<Resource<LLEquipmentElementTypeEntity>> getByValue(
            @PathVariable final Long value) {
        Iterator<LLEquipmentElementTypeEntity> iter = repository.findByValue(value)
                .iterator();
        List<Resource<LLEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<LLEquipmentElementTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentElementTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
