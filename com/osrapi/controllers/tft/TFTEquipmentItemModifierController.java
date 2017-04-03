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

import com.osrapi.models.tft.TFTEquipmentItemModifierEntity;

import com.osrapi.repositories.tft.TFTEquipmentItemModifierRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/tft/equipment_item_modifiers")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class TFTEquipmentItemModifierController {
    /** the static instance of {@link TFTEquipmentItemModifierController}. */
    private static TFTEquipmentItemModifierController instance;
    /**
     * Gets the static instance.
     * @return {@link TFTEquipmentItemModifierController}
     */
    public static TFTEquipmentItemModifierController getInstance() {
        if (instance == null) {
            new TFTEquipmentItemModifierController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private TFTEquipmentItemModifierRepository repository;
    /** Creates a new instance of {@link TFTEquipmentItemModifierController}. */
    public TFTEquipmentItemModifierController() {
        instance = this;
    }
    /**
     * Gets a list of {@link TFTEquipmentItemModifierEntity}s.
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<TFTEquipmentItemModifierEntity>> getAll() {
        Iterator<TFTEquipmentItemModifierEntity> iter = repository.findAll()
                .iterator();
        List<Resource<TFTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<TFTEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link TFTEquipmentItemModifierEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<TFTEquipmentItemModifierEntity>> getById(
            @PathVariable final Long id) {
        TFTEquipmentItemModifierEntity entity = repository.findOne(id);
        List<Resource<TFTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<TFTEquipmentItemModifierEntity>>();
        resources.add(getEquipmentItemModifierResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link TFTEquipmentItemModifierEntity}.
     * @param entity the {@link TFTEquipmentItemModifierEntity}
     * @return {@link Resource}<{@link TFTEquipmentItemModifierEntity}>
     */
    private Resource<TFTEquipmentItemModifierEntity> getEquipmentItemModifierResource(
            final TFTEquipmentItemModifierEntity entity) {
        Resource<TFTEquipmentItemModifierEntity> resource =
                new Resource<TFTEquipmentItemModifierEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link TFTEquipmentItemModifierEntity}s.
     * @param entities the list of {@link TFTEquipmentItemModifierEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<TFTEquipmentItemModifierEntity>> save(
            @RequestBody final List<TFTEquipmentItemModifierEntity> entities) {
        List<Resource<TFTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<TFTEquipmentItemModifierEntity>>();
        Iterator<TFTEquipmentItemModifierEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link TFTEquipmentItemModifierEntity}.
     * @param entity the {@link TFTEquipmentItemModifierEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<TFTEquipmentItemModifierEntity>> save(
            @RequestBody final TFTEquipmentItemModifierEntity entity) {
    
    
        TFTEquipmentItemModifierEntity savedEntity = repository.save(entity);
        List<Resource<TFTEquipmentItemModifierEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link TFTEquipmentItemModifierEntity} instance
     */
    private void setIdFromRepository(final TFTEquipmentItemModifierEntity entity) {
        List<TFTEquipmentItemModifierEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = TFTEquipmentItemModifierEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity TFTEquipmentItemModifierEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<TFTEquipmentItemModifierEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = TFTEquipmentItemModifierEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity TFTEquipmentItemModifierEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<TFTEquipmentItemModifierEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity TFTEquipmentItemModifierEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link TFTEquipmentItemModifierEntity}s.
     * @param entities the list of {@link TFTEquipmentItemModifierEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<TFTEquipmentItemModifierEntity>> update(
            @RequestBody final List<TFTEquipmentItemModifierEntity> entities) {
        List<Resource<TFTEquipmentItemModifierEntity>> resources = new ArrayList<Resource<TFTEquipmentItemModifierEntity>>();
        Iterator<TFTEquipmentItemModifierEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link TFTEquipmentItemModifierEntity}.
     * @param entity the {@link TFTEquipmentItemModifierEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<TFTEquipmentItemModifierEntity>> update(
            @RequestBody final TFTEquipmentItemModifierEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        TFTEquipmentItemModifierEntity savedEntity = repository.save(entity);
        List<Resource<TFTEquipmentItemModifierEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link TFTEquipmentItemModifierEntity}s that share a code.
     * @param code the equipment_item_modifier' code
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<TFTEquipmentItemModifierEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<TFTEquipmentItemModifierEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<TFTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<TFTEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTEquipmentItemModifierEntity}s that share a percent.
     * @param percent the equipment_item_modifier' percent
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "percent/{percent}",
            method = RequestMethod.GET)
    public List<Resource<TFTEquipmentItemModifierEntity>> getByPercent(
            @PathVariable final Boolean percent) {
        Iterator<TFTEquipmentItemModifierEntity> iter = repository.findByPercent(percent)
                .iterator();
        List<Resource<TFTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<TFTEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTEquipmentItemModifierEntity}s that share a special.
     * @param special the equipment_item_modifier' special
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "special/{special}",
            method = RequestMethod.GET)
    public List<Resource<TFTEquipmentItemModifierEntity>> getBySpecial(
            @PathVariable final Long special) {
        Iterator<TFTEquipmentItemModifierEntity> iter = repository.findBySpecial(special)
                .iterator();
        List<Resource<TFTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<TFTEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTEquipmentItemModifierEntity}s that share a value.
     * @param value the equipment_item_modifier' value
     * @return {@link List}<{@link Resource}<{@link TFTEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "value/{value}",
            method = RequestMethod.GET)
    public List<Resource<TFTEquipmentItemModifierEntity>> getByValue(
            @PathVariable final float value) {
        Iterator<TFTEquipmentItemModifierEntity> iter = repository.findByValue(value)
                .iterator();
        List<Resource<TFTEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<TFTEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
