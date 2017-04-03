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

import com.osrapi.models.tft.TFTEquipmentSlotEntity;

import com.osrapi.repositories.tft.TFTEquipmentSlotRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/tft/equipment_slots")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class TFTEquipmentSlotController {
    /** the static instance of {@link TFTEquipmentSlotController}. */
    private static TFTEquipmentSlotController instance;
    /**
     * Gets the static instance.
     * @return {@link TFTEquipmentSlotController}
     */
    public static TFTEquipmentSlotController getInstance() {
        if (instance == null) {
            new TFTEquipmentSlotController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private TFTEquipmentSlotRepository repository;
    /** Creates a new instance of {@link TFTEquipmentSlotController}. */
    public TFTEquipmentSlotController() {
        instance = this;
    }
    /**
     * Gets a list of {@link TFTEquipmentSlotEntity}s.
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentSlotEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<TFTEquipmentSlotEntity>> getAll() {
        Iterator<TFTEquipmentSlotEntity> iter = repository.findAll()
                .iterator();
        List<Resource<TFTEquipmentSlotEntity>> resources =
                new ArrayList<Resource<TFTEquipmentSlotEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentSlotResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link TFTEquipmentSlotEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentSlotEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<TFTEquipmentSlotEntity>> getById(
            @PathVariable final Long id) {
        TFTEquipmentSlotEntity entity = repository.findOne(id);
        List<Resource<TFTEquipmentSlotEntity>> resources =
                new ArrayList<Resource<TFTEquipmentSlotEntity>>();
        resources.add(getEquipmentSlotResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link TFTEquipmentSlotEntity}.
     * @param entity the {@link TFTEquipmentSlotEntity}
     * @return {@link Resource}<{@link TFTEquipmentSlotEntity}>
     */
    private Resource<TFTEquipmentSlotEntity> getEquipmentSlotResource(
            final TFTEquipmentSlotEntity entity) {
        Resource<TFTEquipmentSlotEntity> resource =
                new Resource<TFTEquipmentSlotEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link TFTEquipmentSlotEntity}s.
     * @param entities the list of {@link TFTEquipmentSlotEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentSlotEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<TFTEquipmentSlotEntity>> save(
            @RequestBody final List<TFTEquipmentSlotEntity> entities) {
        List<Resource<TFTEquipmentSlotEntity>> resources =
                new ArrayList<Resource<TFTEquipmentSlotEntity>>();
        Iterator<TFTEquipmentSlotEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link TFTEquipmentSlotEntity}.
     * @param entity the {@link TFTEquipmentSlotEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentSlotEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<TFTEquipmentSlotEntity>> save(
            @RequestBody final TFTEquipmentSlotEntity entity) {
    
    
        TFTEquipmentSlotEntity savedEntity = repository.save(entity);
        List<Resource<TFTEquipmentSlotEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link TFTEquipmentSlotEntity} instance
     */
    private void setIdFromRepository(final TFTEquipmentSlotEntity entity) {
        List<TFTEquipmentSlotEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = TFTEquipmentSlotEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity TFTEquipmentSlotEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<TFTEquipmentSlotEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = TFTEquipmentSlotEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity TFTEquipmentSlotEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<TFTEquipmentSlotEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity TFTEquipmentSlotEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link TFTEquipmentSlotEntity}s.
     * @param entities the list of {@link TFTEquipmentSlotEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentSlotEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<TFTEquipmentSlotEntity>> update(
            @RequestBody final List<TFTEquipmentSlotEntity> entities) {
        List<Resource<TFTEquipmentSlotEntity>> resources = new ArrayList<Resource<TFTEquipmentSlotEntity>>();
        Iterator<TFTEquipmentSlotEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link TFTEquipmentSlotEntity}.
     * @param entity the {@link TFTEquipmentSlotEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentSlotEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<TFTEquipmentSlotEntity>> update(
            @RequestBody final TFTEquipmentSlotEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        TFTEquipmentSlotEntity savedEntity = repository.save(entity);
        List<Resource<TFTEquipmentSlotEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link TFTEquipmentSlotEntity}s that share a code.
     * @param code the equipment_slot' code
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentSlotEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<TFTEquipmentSlotEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<TFTEquipmentSlotEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<TFTEquipmentSlotEntity>> resources =
                new ArrayList<Resource<TFTEquipmentSlotEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentSlotResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTEquipmentSlotEntity}s that share a value.
     * @param value the equipment_slot' value
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentSlotEntity}>>
     */
    @RequestMapping(path = "value/{value}",
            method = RequestMethod.GET)
    public List<Resource<TFTEquipmentSlotEntity>> getByValue(
            @PathVariable final Long value) {
        Iterator<TFTEquipmentSlotEntity> iter = repository.findByValue(value)
                .iterator();
        List<Resource<TFTEquipmentSlotEntity>> resources =
                new ArrayList<Resource<TFTEquipmentSlotEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentSlotResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
