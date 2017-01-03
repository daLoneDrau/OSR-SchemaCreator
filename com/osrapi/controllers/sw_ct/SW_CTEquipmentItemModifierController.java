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

import com.osrapi.models.sw_ct.SW_CTEquipmentItemModifierEntity;

import com.osrapi.repositories.sw_ct.SW_CTEquipmentItemModifierRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/equipment_item_modifiers")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTEquipmentItemModifierController {
    /** the static instance of {@link SW_CTEquipmentItemModifierController}. */
    private static SW_CTEquipmentItemModifierController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTEquipmentItemModifierController}
     */
    public static SW_CTEquipmentItemModifierController getInstance() {
        if (instance == null) {
            new SW_CTEquipmentItemModifierController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTEquipmentItemModifierRepository repository;
    /** Creates a new instance of {@link SW_CTEquipmentItemModifierController}. */
    public SW_CTEquipmentItemModifierController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTEquipmentItemModifierEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTEquipmentItemModifierEntity>> getAll() {
        Iterator<SW_CTEquipmentItemModifierEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<SW_CTEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTEquipmentItemModifierEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTEquipmentItemModifierEntity>> getById(
            @PathVariable final Long id) {
        SW_CTEquipmentItemModifierEntity entity = repository.findOne(id);
        List<Resource<SW_CTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<SW_CTEquipmentItemModifierEntity>>();
        resources.add(getEquipmentItemModifierResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTEquipmentItemModifierEntity}.
     * @param entity the {@link SW_CTEquipmentItemModifierEntity}
     * @return {@link Resource}<{@link SW_CTEquipmentItemModifierEntity}>
     */
    private Resource<SW_CTEquipmentItemModifierEntity> getEquipmentItemModifierResource(
            final SW_CTEquipmentItemModifierEntity entity) {
        Resource<SW_CTEquipmentItemModifierEntity> resource =
                new Resource<SW_CTEquipmentItemModifierEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTEquipmentItemModifierEntity}s.
     * @param entities the list of {@link SW_CTEquipmentItemModifierEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTEquipmentItemModifierEntity>> save(
            @RequestBody final List<SW_CTEquipmentItemModifierEntity> entities) {
        List<Resource<SW_CTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<SW_CTEquipmentItemModifierEntity>>();
        Iterator<SW_CTEquipmentItemModifierEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTEquipmentItemModifierEntity}.
     * @param entity the {@link SW_CTEquipmentItemModifierEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTEquipmentItemModifierEntity>> save(
            @RequestBody final SW_CTEquipmentItemModifierEntity entity) {
    
    
        SW_CTEquipmentItemModifierEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTEquipmentItemModifierEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTEquipmentItemModifierEntity} instance
     */
    private void setIdFromRepository(final SW_CTEquipmentItemModifierEntity entity) {
        List<SW_CTEquipmentItemModifierEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTEquipmentItemModifierEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTEquipmentItemModifierEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTEquipmentItemModifierEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTEquipmentItemModifierEntity>) method.invoke(
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
     * Updates multiple {@link SW_CTEquipmentItemModifierEntity}s.
     * @param entities the list of {@link SW_CTEquipmentItemModifierEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTEquipmentItemModifierEntity>> update(
            @RequestBody final List<SW_CTEquipmentItemModifierEntity> entities) {
        List<Resource<SW_CTEquipmentItemModifierEntity>> resources = new ArrayList<Resource<SW_CTEquipmentItemModifierEntity>>();
        Iterator<SW_CTEquipmentItemModifierEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTEquipmentItemModifierEntity}.
     * @param entity the {@link SW_CTEquipmentItemModifierEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTEquipmentItemModifierEntity>> update(
            @RequestBody final SW_CTEquipmentItemModifierEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SW_CTEquipmentItemModifierEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTEquipmentItemModifierEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTEquipmentItemModifierEntity}s that share a code.
     * @param code the equipment_item_modifier' code
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTEquipmentItemModifierEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<SW_CTEquipmentItemModifierEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<SW_CTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<SW_CTEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTEquipmentItemModifierEntity}s that share a percent.
     * @param percent the equipment_item_modifier' percent
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "percent/{percent}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTEquipmentItemModifierEntity>> getByPercent(
            @PathVariable final Boolean percent) {
        Iterator<SW_CTEquipmentItemModifierEntity> iter = repository.findByPercent(percent)
                .iterator();
        List<Resource<SW_CTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<SW_CTEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTEquipmentItemModifierEntity}s that share a special.
     * @param special the equipment_item_modifier' special
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "special/{special}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTEquipmentItemModifierEntity>> getBySpecial(
            @PathVariable final Long special) {
        Iterator<SW_CTEquipmentItemModifierEntity> iter = repository.findBySpecial(special)
                .iterator();
        List<Resource<SW_CTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<SW_CTEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTEquipmentItemModifierEntity}s that share a value.
     * @param value the equipment_item_modifier' value
     * @return {@link List}<{@link Resource}<{@link SW_CTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "value/{value}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTEquipmentItemModifierEntity>> getByValue(
            @PathVariable final float value) {
        Iterator<SW_CTEquipmentItemModifierEntity> iter = repository.findByValue(value)
                .iterator();
        List<Resource<SW_CTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<SW_CTEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
