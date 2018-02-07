package com.osrapi.controllers.shin_sam;

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

import com.osrapi.models.shin_sam.SHIN_SAMCurrencyEntity;

import com.osrapi.repositories.shin_sam.SHIN_SAMCurrencyRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/shin_sam/currencies")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SHIN_SAMCurrencyController {
    /** the static instance of {@link SHIN_SAMCurrencyController}. */
    private static SHIN_SAMCurrencyController instance;
    /**
     * Gets the static instance.
     * @return {@link SHIN_SAMCurrencyController}
     */
    public static SHIN_SAMCurrencyController getInstance() {
        if (instance == null) {
            new SHIN_SAMCurrencyController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SHIN_SAMCurrencyRepository repository;
    /** Creates a new instance of {@link SHIN_SAMCurrencyController}. */
    public SHIN_SAMCurrencyController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SHIN_SAMCurrencyEntity}s.
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMCurrencyEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SHIN_SAMCurrencyEntity>> getAll() {
        Iterator<SHIN_SAMCurrencyEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SHIN_SAMCurrencyEntity>> resources =
                new ArrayList<Resource<SHIN_SAMCurrencyEntity>>();
        while (iter.hasNext()) {
            resources.add(getCurrencyResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SHIN_SAMCurrencyEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMCurrencyEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SHIN_SAMCurrencyEntity>> getById(
            @PathVariable final Long id) {
        SHIN_SAMCurrencyEntity entity = repository.findOne(id);
        List<Resource<SHIN_SAMCurrencyEntity>> resources =
                new ArrayList<Resource<SHIN_SAMCurrencyEntity>>();
        resources.add(getCurrencyResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SHIN_SAMCurrencyEntity}.
     * @param entity the {@link SHIN_SAMCurrencyEntity}
     * @return {@link Resource}<{@link SHIN_SAMCurrencyEntity}>
     */
    private Resource<SHIN_SAMCurrencyEntity> getCurrencyResource(
            final SHIN_SAMCurrencyEntity entity) {
        Resource<SHIN_SAMCurrencyEntity> resource =
                new Resource<SHIN_SAMCurrencyEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SHIN_SAMCurrencyEntity}s.
     * @param entities the list of {@link SHIN_SAMCurrencyEntity} instances
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMCurrencyEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SHIN_SAMCurrencyEntity>> save(
            @RequestBody final List<SHIN_SAMCurrencyEntity> entities) {
        List<Resource<SHIN_SAMCurrencyEntity>> resources =
                new ArrayList<Resource<SHIN_SAMCurrencyEntity>>();
        Iterator<SHIN_SAMCurrencyEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SHIN_SAMCurrencyEntity}.
     * @param entity the {@link SHIN_SAMCurrencyEntity} instance
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMCurrencyEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SHIN_SAMCurrencyEntity>> save(
            @RequestBody final SHIN_SAMCurrencyEntity entity) {
    
    
        SHIN_SAMCurrencyEntity savedEntity = repository.save(entity);
        List<Resource<SHIN_SAMCurrencyEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SHIN_SAMCurrencyEntity} instance
     */
    private void setIdFromRepository(final SHIN_SAMCurrencyEntity entity) {
        List<SHIN_SAMCurrencyEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SHIN_SAMCurrencyEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SHIN_SAMCurrencyEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SHIN_SAMCurrencyEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SHIN_SAMCurrencyEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SHIN_SAMCurrencyEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SHIN_SAMCurrencyEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SHIN_SAMCurrencyEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SHIN_SAMCurrencyEntity}s.
     * @param entities the list of {@link SHIN_SAMCurrencyEntity} instances
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMCurrencyEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SHIN_SAMCurrencyEntity>> update(
            @RequestBody final List<SHIN_SAMCurrencyEntity> entities) {
        List<Resource<SHIN_SAMCurrencyEntity>> resources = new ArrayList<Resource<SHIN_SAMCurrencyEntity>>();
        Iterator<SHIN_SAMCurrencyEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SHIN_SAMCurrencyEntity}.
     * @param entity the {@link SHIN_SAMCurrencyEntity} instance
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMCurrencyEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SHIN_SAMCurrencyEntity>> update(
            @RequestBody final SHIN_SAMCurrencyEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SHIN_SAMCurrencyEntity savedEntity = repository.save(entity);
        List<Resource<SHIN_SAMCurrencyEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SHIN_SAMCurrencyEntity}s that share a name.
     * @param name the currency' name
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMCurrencyEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<SHIN_SAMCurrencyEntity>> getByName(
            @PathVariable final String name) {
        Iterator<SHIN_SAMCurrencyEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<SHIN_SAMCurrencyEntity>> resources =
                new ArrayList<Resource<SHIN_SAMCurrencyEntity>>();
        while (iter.hasNext()) {
            resources.add(getCurrencyResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SHIN_SAMCurrencyEntity}s that share a sortOrder.
     * @param sortOrder the currency' sortOrder
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMCurrencyEntity}>>
     */
    @RequestMapping(path = "sort_order/{sortOrder}",
            method = RequestMethod.GET)
    public List<Resource<SHIN_SAMCurrencyEntity>> getBySortOrder(
            @PathVariable final Long sortOrder) {
        Iterator<SHIN_SAMCurrencyEntity> iter = repository.findBySortOrder(sortOrder)
                .iterator();
        List<Resource<SHIN_SAMCurrencyEntity>> resources =
                new ArrayList<Resource<SHIN_SAMCurrencyEntity>>();
        while (iter.hasNext()) {
            resources.add(getCurrencyResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
