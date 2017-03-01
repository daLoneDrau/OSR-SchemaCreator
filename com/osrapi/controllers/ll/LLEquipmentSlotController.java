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

import com.osrapi.models.ll.LLEquipmentSlotEntity;

import com.osrapi.repositories.ll.LLEquipmentSlotRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/equipment_slots")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLEquipmentSlotController {
    /** the static instance of {@link LLEquipmentSlotController}. */
    private static LLEquipmentSlotController instance;
    /**
     * Gets the static instance.
     * @return {@link LLEquipmentSlotController}
     */
    public static LLEquipmentSlotController getInstance() {
        if (instance == null) {
            new LLEquipmentSlotController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLEquipmentSlotRepository repository;
    /** Creates a new instance of {@link LLEquipmentSlotController}. */
    public LLEquipmentSlotController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLEquipmentSlotEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLEquipmentSlotEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLEquipmentSlotEntity>> getAll() {
        Iterator<LLEquipmentSlotEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLEquipmentSlotEntity>> resources =
                new ArrayList<Resource<LLEquipmentSlotEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentSlotResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLEquipmentSlotEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLEquipmentSlotEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLEquipmentSlotEntity>> getById(
            @PathVariable final Long id) {
        LLEquipmentSlotEntity entity = repository.findOne(id);
        List<Resource<LLEquipmentSlotEntity>> resources =
                new ArrayList<Resource<LLEquipmentSlotEntity>>();
        resources.add(getEquipmentSlotResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLEquipmentSlotEntity}.
     * @param entity the {@link LLEquipmentSlotEntity}
     * @return {@link Resource}<{@link LLEquipmentSlotEntity}>
     */
    private Resource<LLEquipmentSlotEntity> getEquipmentSlotResource(
            final LLEquipmentSlotEntity entity) {
        Resource<LLEquipmentSlotEntity> resource =
                new Resource<LLEquipmentSlotEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLEquipmentSlotEntity}s.
     * @param entities the list of {@link LLEquipmentSlotEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLEquipmentSlotEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLEquipmentSlotEntity>> save(
            @RequestBody final List<LLEquipmentSlotEntity> entities) {
        List<Resource<LLEquipmentSlotEntity>> resources =
                new ArrayList<Resource<LLEquipmentSlotEntity>>();
        Iterator<LLEquipmentSlotEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLEquipmentSlotEntity}.
     * @param entity the {@link LLEquipmentSlotEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLEquipmentSlotEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLEquipmentSlotEntity>> save(
            @RequestBody final LLEquipmentSlotEntity entity) {
    
    
        LLEquipmentSlotEntity savedEntity = repository.save(entity);
        List<Resource<LLEquipmentSlotEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLEquipmentSlotEntity} instance
     */
    private void setIdFromRepository(final LLEquipmentSlotEntity entity) {
        List<LLEquipmentSlotEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLEquipmentSlotEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLEquipmentSlotEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLEquipmentSlotEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLEquipmentSlotEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLEquipmentSlotEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLEquipmentSlotEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLEquipmentSlotEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLEquipmentSlotEntity}s.
     * @param entities the list of {@link LLEquipmentSlotEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLEquipmentSlotEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLEquipmentSlotEntity>> update(
            @RequestBody final List<LLEquipmentSlotEntity> entities) {
        List<Resource<LLEquipmentSlotEntity>> resources = new ArrayList<Resource<LLEquipmentSlotEntity>>();
        Iterator<LLEquipmentSlotEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLEquipmentSlotEntity}.
     * @param entity the {@link LLEquipmentSlotEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLEquipmentSlotEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLEquipmentSlotEntity>> update(
            @RequestBody final LLEquipmentSlotEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        LLEquipmentSlotEntity savedEntity = repository.save(entity);
        List<Resource<LLEquipmentSlotEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLEquipmentSlotEntity}s that share a code.
     * @param code the equipment_slot' code
     * @return {@link List}<{@link Resource}<{@link LLEquipmentSlotEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<LLEquipmentSlotEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<LLEquipmentSlotEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<LLEquipmentSlotEntity>> resources =
                new ArrayList<Resource<LLEquipmentSlotEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentSlotResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLEquipmentSlotEntity}s that share a value.
     * @param value the equipment_slot' value
     * @return {@link List}<{@link Resource}<{@link LLEquipmentSlotEntity}>>
     */
    @RequestMapping(path = "value/{value}",
            method = RequestMethod.GET)
    public List<Resource<LLEquipmentSlotEntity>> getByValue(
            @PathVariable final Long value) {
        Iterator<LLEquipmentSlotEntity> iter = repository.findByValue(value)
                .iterator();
        List<Resource<LLEquipmentSlotEntity>> resources =
                new ArrayList<Resource<LLEquipmentSlotEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentSlotResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
