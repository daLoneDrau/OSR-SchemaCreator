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

import com.osrapi.models.ll.LLEquipmentItemModifierEntity;

import com.osrapi.repositories.ll.LLEquipmentItemModifierRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/equipment_item_modifiers")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLEquipmentItemModifierController {
    /** the static instance of {@link LLEquipmentItemModifierController}. */
    private static LLEquipmentItemModifierController instance;
    /**
     * Gets the static instance.
     * @return {@link LLEquipmentItemModifierController}
     */
    public static LLEquipmentItemModifierController getInstance() {
        if (instance == null) {
            new LLEquipmentItemModifierController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLEquipmentItemModifierRepository repository;
    /** Creates a new instance of {@link LLEquipmentItemModifierController}. */
    public LLEquipmentItemModifierController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLEquipmentItemModifierEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLEquipmentItemModifierEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLEquipmentItemModifierEntity>> getAll() {
        Iterator<LLEquipmentItemModifierEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<LLEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLEquipmentItemModifierEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLEquipmentItemModifierEntity>> getById(
            @PathVariable final Long id) {
        LLEquipmentItemModifierEntity entity = repository.findOne(id);
        List<Resource<LLEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<LLEquipmentItemModifierEntity>>();
        resources.add(getEquipmentItemModifierResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLEquipmentItemModifierEntity}.
     * @param entity the {@link LLEquipmentItemModifierEntity}
     * @return {@link Resource}<{@link LLEquipmentItemModifierEntity}>
     */
    private Resource<LLEquipmentItemModifierEntity> getEquipmentItemModifierResource(
            final LLEquipmentItemModifierEntity entity) {
        Resource<LLEquipmentItemModifierEntity> resource =
                new Resource<LLEquipmentItemModifierEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLEquipmentItemModifierEntity}s.
     * @param entities the list of {@link LLEquipmentItemModifierEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLEquipmentItemModifierEntity>> save(
            @RequestBody final List<LLEquipmentItemModifierEntity> entities) {
        List<Resource<LLEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<LLEquipmentItemModifierEntity>>();
        Iterator<LLEquipmentItemModifierEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLEquipmentItemModifierEntity}.
     * @param entity the {@link LLEquipmentItemModifierEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLEquipmentItemModifierEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLEquipmentItemModifierEntity>> save(
            @RequestBody final LLEquipmentItemModifierEntity entity) {
    
    
        LLEquipmentItemModifierEntity savedEntity = repository.save(entity);
        List<Resource<LLEquipmentItemModifierEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLEquipmentItemModifierEntity} instance
     */
    private void setIdFromRepository(final LLEquipmentItemModifierEntity entity) {
        List<LLEquipmentItemModifierEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLEquipmentItemModifierEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLEquipmentItemModifierEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLEquipmentItemModifierEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLEquipmentItemModifierEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLEquipmentItemModifierEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLEquipmentItemModifierEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLEquipmentItemModifierEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLEquipmentItemModifierEntity}s.
     * @param entities the list of {@link LLEquipmentItemModifierEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLEquipmentItemModifierEntity>> update(
            @RequestBody final List<LLEquipmentItemModifierEntity> entities) {
        List<Resource<LLEquipmentItemModifierEntity>> resources = new ArrayList<Resource<LLEquipmentItemModifierEntity>>();
        Iterator<LLEquipmentItemModifierEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLEquipmentItemModifierEntity}.
     * @param entity the {@link LLEquipmentItemModifierEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLEquipmentItemModifierEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLEquipmentItemModifierEntity>> update(
            @RequestBody final LLEquipmentItemModifierEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        LLEquipmentItemModifierEntity savedEntity = repository.save(entity);
        List<Resource<LLEquipmentItemModifierEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLEquipmentItemModifierEntity}s that share a code.
     * @param code the equipment_item_modifier' code
     * @return {@link List}<{@link Resource}<{@link LLEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<LLEquipmentItemModifierEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<LLEquipmentItemModifierEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<LLEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<LLEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLEquipmentItemModifierEntity}s that share a percent.
     * @param percent the equipment_item_modifier' percent
     * @return {@link List}<{@link Resource}<{@link LLEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "percent/{percent}",
            method = RequestMethod.GET)
    public List<Resource<LLEquipmentItemModifierEntity>> getByPercent(
            @PathVariable final Boolean percent) {
        Iterator<LLEquipmentItemModifierEntity> iter = repository.findByPercent(percent)
                .iterator();
        List<Resource<LLEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<LLEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLEquipmentItemModifierEntity}s that share a special.
     * @param special the equipment_item_modifier' special
     * @return {@link List}<{@link Resource}<{@link LLEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "special/{special}",
            method = RequestMethod.GET)
    public List<Resource<LLEquipmentItemModifierEntity>> getBySpecial(
            @PathVariable final Long special) {
        Iterator<LLEquipmentItemModifierEntity> iter = repository.findBySpecial(special)
                .iterator();
        List<Resource<LLEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<LLEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLEquipmentItemModifierEntity}s that share a value.
     * @param value the equipment_item_modifier' value
     * @return {@link List}<{@link Resource}<{@link LLEquipmentItemModifierEntity}>>
     */
    @RequestMapping(path = "value/{value}",
            method = RequestMethod.GET)
    public List<Resource<LLEquipmentItemModifierEntity>> getByValue(
            @PathVariable final float value) {
        Iterator<LLEquipmentItemModifierEntity> iter = repository.findByValue(value)
                .iterator();
        List<Resource<LLEquipmentItemModifierEntity>> resources =
                new ArrayList<Resource<LLEquipmentItemModifierEntity>>();
        while (iter.hasNext()) {
            resources.add(getEquipmentItemModifierResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
