package com.osrapi.controllers.tft;

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

import com.osrapi.models.tft.TFTEquipmentElementTypeEntity;

import com.osrapi.repositories.tft.TFTEquipmentElementTypeRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/tft/equipment_element_types")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class TFTEquipmentElementTypeController {
    /** the static instance of {@link TFTEquipmentElementTypeController}. */
    private static TFTEquipmentElementTypeController instance;
    /**
     * Gets the static instance.
     * @return {@link TFTEquipmentElementTypeController}
     */
    public static TFTEquipmentElementTypeController getInstance() {
        if (instance == null) {
            new TFTEquipmentElementTypeController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private TFTEquipmentElementTypeRepository repository;
    /** Creates a new instance of {@link TFTEquipmentElementTypeController}. */
    public TFTEquipmentElementTypeController() {
        instance = this;
    }
    /**
     * Gets a list of {@link TFTEquipmentElementTypeEntity}s.
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<TFTEquipmentElementTypeEntity>> getAll() {
        Iterator<TFTEquipmentElementTypeEntity> iter = repository.findAll()
                .iterator();
        List<Resource<TFTEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<TFTEquipmentElementTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentElementTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link TFTEquipmentElementTypeEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<TFTEquipmentElementTypeEntity>> getById(
            @PathVariable final Long id) {
        TFTEquipmentElementTypeEntity entity = repository.findOne(id);
        List<Resource<TFTEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<TFTEquipmentElementTypeEntity>>();
        resources.add(getEquipmentElementTypeResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link TFTEquipmentElementTypeEntity}.
     * @param entity the {@link TFTEquipmentElementTypeEntity}
     * @return {@link Resource}<{@link TFTEquipmentElementTypeEntity}>
     */
    private Resource<TFTEquipmentElementTypeEntity> getEquipmentElementTypeResource(
            final TFTEquipmentElementTypeEntity entity) {
        Resource<TFTEquipmentElementTypeEntity> resource =
                new Resource<TFTEquipmentElementTypeEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link TFTEquipmentElementTypeEntity}s.
     * @param entities the list of {@link TFTEquipmentElementTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<TFTEquipmentElementTypeEntity>> save(
            @RequestBody final List<TFTEquipmentElementTypeEntity> entities) {
        List<Resource<TFTEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<TFTEquipmentElementTypeEntity>>();
        Iterator<TFTEquipmentElementTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link TFTEquipmentElementTypeEntity}.
     * @param entity the {@link TFTEquipmentElementTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<TFTEquipmentElementTypeEntity>> save(
            @RequestBody final TFTEquipmentElementTypeEntity entity) {
    
    
        TFTEquipmentElementTypeEntity savedEntity = repository.save(entity);
        List<Resource<TFTEquipmentElementTypeEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link TFTEquipmentElementTypeEntity} instance
     */
    private void setIdFromRepository(final TFTEquipmentElementTypeEntity entity) {
        List<TFTEquipmentElementTypeEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = TFTEquipmentElementTypeEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity TFTEquipmentElementTypeEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<TFTEquipmentElementTypeEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = TFTEquipmentElementTypeEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity TFTEquipmentElementTypeEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<TFTEquipmentElementTypeEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity TFTEquipmentElementTypeEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link TFTEquipmentElementTypeEntity}s.
     * @param entities the list of {@link TFTEquipmentElementTypeEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<TFTEquipmentElementTypeEntity>> update(
            @RequestBody final List<TFTEquipmentElementTypeEntity> entities) {
        List<Resource<TFTEquipmentElementTypeEntity>> resources = new ArrayList<Resource<TFTEquipmentElementTypeEntity>>();
        Iterator<TFTEquipmentElementTypeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link TFTEquipmentElementTypeEntity}.
     * @param entity the {@link TFTEquipmentElementTypeEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<TFTEquipmentElementTypeEntity>> update(
            @RequestBody final TFTEquipmentElementTypeEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        TFTEquipmentElementTypeEntity savedEntity = repository.save(entity);
        List<Resource<TFTEquipmentElementTypeEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link TFTEquipmentElementTypeEntity}s that share a code.
     * @param code the equipment_element_type' code
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<TFTEquipmentElementTypeEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<TFTEquipmentElementTypeEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<TFTEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<TFTEquipmentElementTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentElementTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTEquipmentElementTypeEntity}s that share a value.
     * @param value the equipment_element_type' value
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentElementTypeEntity}>>
     */
    @RequestMapping(path = "value/{value}",
            method = RequestMethod.GET)
    public List<Resource<TFTEquipmentElementTypeEntity>> getByValue(
            @PathVariable final Long value) {
        Iterator<TFTEquipmentElementTypeEntity> iter = repository.findByValue(value)
                .iterator();
        List<Resource<TFTEquipmentElementTypeEntity>> resources =
                new ArrayList<Resource<TFTEquipmentElementTypeEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentElementTypeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
