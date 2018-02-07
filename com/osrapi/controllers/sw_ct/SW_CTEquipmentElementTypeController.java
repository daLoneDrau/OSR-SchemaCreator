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

import com.osrapi.models.sw_ct.SW_CTEquipmentElementTypeEntity;

import com.osrapi.repositories.sw_ct.SW_CTEquipmentElementTypeRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/equipment_element_types")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTEquipmentElementTypeController {
    /** the static instance of {@link SW_CTEquipmentElementTypeController}. */
    private static SW_CTEquipmentElementTypeController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTEquipmentElementTypeController}
     */
    public static SW_CTEquipmentElementTypeController getInstance() {
        if (instance == null) {
            new SW_CTEquipmentElementTypeController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTEquipmentElementTypeRepository repository;
    /** Creates a new instance of {@link SW_CTEquipmentElementTypeController}. */
    public SW_CTEquipmentElementTypeController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTEquipmentElementTypeEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTEquipmentElementTypeEntity>> getAll() {
        Iterator<SW_CTEquipmentElementTypeEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<SW_CTEquipmentElementTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentElementTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTEquipmentElementTypeEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTEquipmentElementTypeEntity>> getById(
            @PathVariable final Long id) {
        SW_CTEquipmentElementTypeEntity entity = repository.findOne(id);
        List<Resource<SW_CTEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<SW_CTEquipmentElementTypeEntity>>();
        resources.add(getEquipmentElementTypeResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTEquipmentElementTypeEntity}.
     * @param entity the {@link SW_CTEquipmentElementTypeEntity}
     * @return {@link Resource}<{@link SW_CTEquipmentElementTypeEntity}>
     */
    private Resource<SW_CTEquipmentElementTypeEntity> getEquipmentElementTypeResource(
            final SW_CTEquipmentElementTypeEntity entity) {
        Resource<SW_CTEquipmentElementTypeEntity> resource =
                new Resource<SW_CTEquipmentElementTypeEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTEquipmentElementTypeEntity}s.
     * @param entities the list of {@link SW_CTEquipmentElementTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTEquipmentElementTypeEntity>> save(
            @RequestBody final List<SW_CTEquipmentElementTypeEntity> entities) {
        List<Resource<SW_CTEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<SW_CTEquipmentElementTypeEntity>>();
        Iterator<SW_CTEquipmentElementTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTEquipmentElementTypeEntity}.
     * @param entity the {@link SW_CTEquipmentElementTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTEquipmentElementTypeEntity>> save(
            @RequestBody final SW_CTEquipmentElementTypeEntity entity) {
    
    
        SW_CTEquipmentElementTypeEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTEquipmentElementTypeEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTEquipmentElementTypeEntity} instance
     */
    private void setIdFromRepository(final SW_CTEquipmentElementTypeEntity entity) {
        List<SW_CTEquipmentElementTypeEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTEquipmentElementTypeEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SW_CTEquipmentElementTypeEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTEquipmentElementTypeEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTEquipmentElementTypeEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SW_CTEquipmentElementTypeEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTEquipmentElementTypeEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SW_CTEquipmentElementTypeEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SW_CTEquipmentElementTypeEntity}s.
     * @param entities the list of {@link SW_CTEquipmentElementTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTEquipmentElementTypeEntity>> update(
            @RequestBody final List<SW_CTEquipmentElementTypeEntity> entities) {
        List<Resource<SW_CTEquipmentElementTypeEntity>> resources = new ArrayList<Resource<SW_CTEquipmentElementTypeEntity>>();
        Iterator<SW_CTEquipmentElementTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTEquipmentElementTypeEntity}.
     * @param entity the {@link SW_CTEquipmentElementTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTEquipmentElementTypeEntity>> update(
            @RequestBody final SW_CTEquipmentElementTypeEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTEquipmentElementTypeEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTEquipmentElementTypeEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTEquipmentElementTypeEntity}s that share a code.
     * @param code the equipment_element_type' code
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTEquipmentElementTypeEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<SW_CTEquipmentElementTypeEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<SW_CTEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<SW_CTEquipmentElementTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentElementTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTEquipmentElementTypeEntity}s that share a value.
     * @param value the equipment_element_type' value
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "value/{value}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTEquipmentElementTypeEntity>> getByValue(
            @PathVariable final Long value) {
        Iterator<SW_CTEquipmentElementTypeEntity> iter = repository.findByValue(value)
                .iterator();
        List<Resource<SW_CTEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<SW_CTEquipmentElementTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentElementTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
