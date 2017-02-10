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

import com.osrapi.models.ll.LLCurrencyEntity;

import com.osrapi.repositories.ll.LLCurrencyRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/currencies")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLCurrencyController {
    /** the static instance of {@link LLCurrencyController}. */
    private static LLCurrencyController instance;
    /**
     * Gets the static instance.
     * @return {@link LLCurrencyController}
     */
    public static LLCurrencyController getInstance() {
        if (instance == null) {
            new LLCurrencyController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLCurrencyRepository repository;
    /** Creates a new instance of {@link LLCurrencyController}. */
    public LLCurrencyController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLCurrencyEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLCurrencyEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLCurrencyEntity>> getAll() {
        Iterator<LLCurrencyEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLCurrencyEntity>> resources =
                new ArrayList<Resource<LLCurrencyEntity>>();
        while (iter.hasNext()) {
            resources.add(getCurrencyResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLCurrencyEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLCurrencyEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLCurrencyEntity>> getById(
            @PathVariable final Long id) {
        LLCurrencyEntity entity = repository.findOne(id);
        List<Resource<LLCurrencyEntity>> resources =
                new ArrayList<Resource<LLCurrencyEntity>>();
        resources.add(getCurrencyResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLCurrencyEntity}.
     * @param entity the {@link LLCurrencyEntity}
     * @return {@link Resource}<{@link LLCurrencyEntity}>
     */
    private Resource<LLCurrencyEntity> getCurrencyResource(
            final LLCurrencyEntity entity) {
        Resource<LLCurrencyEntity> resource =
                new Resource<LLCurrencyEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLCurrencyEntity}s.
     * @param entities the list of {@link LLCurrencyEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLCurrencyEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLCurrencyEntity>> save(
            @RequestBody final List<LLCurrencyEntity> entities) {
        List<Resource<LLCurrencyEntity>> resources =
                new ArrayList<Resource<LLCurrencyEntity>>();
        Iterator<LLCurrencyEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLCurrencyEntity}.
     * @param entity the {@link LLCurrencyEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLCurrencyEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLCurrencyEntity>> save(
            @RequestBody final LLCurrencyEntity entity) {
    
    
        LLCurrencyEntity savedEntity = repository.save(entity);
        List<Resource<LLCurrencyEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLCurrencyEntity} instance
     */
    private void setIdFromRepository(final LLCurrencyEntity entity) {
        List<LLCurrencyEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLCurrencyEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLCurrencyEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLCurrencyEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLCurrencyEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLCurrencyEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLCurrencyEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLCurrencyEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLCurrencyEntity}s.
     * @param entities the list of {@link LLCurrencyEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLCurrencyEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLCurrencyEntity>> update(
            @RequestBody final List<LLCurrencyEntity> entities) {
        List<Resource<LLCurrencyEntity>> resources = new ArrayList<Resource<LLCurrencyEntity>>();
        Iterator<LLCurrencyEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLCurrencyEntity}.
     * @param entity the {@link LLCurrencyEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLCurrencyEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLCurrencyEntity>> update(
            @RequestBody final LLCurrencyEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        LLCurrencyEntity savedEntity = repository.save(entity);
        List<Resource<LLCurrencyEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLCurrencyEntity}s that share a code.
     * @param code the currency' code
     * @return {@link List}<{@link Resource}<{@link LLCurrencyEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<LLCurrencyEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<LLCurrencyEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<LLCurrencyEntity>> resources =
                new ArrayList<Resource<LLCurrencyEntity>>();
        while (iter.hasNext()) {
            resources.add(getCurrencyResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLCurrencyEntity}s that share a name.
     * @param name the currency' name
     * @return {@link List}<{@link Resource}<{@link LLCurrencyEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<LLCurrencyEntity>> getByName(
            @PathVariable final String name) {
        Iterator<LLCurrencyEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<LLCurrencyEntity>> resources =
                new ArrayList<Resource<LLCurrencyEntity>>();
        while (iter.hasNext()) {
            resources.add(getCurrencyResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLCurrencyEntity}s that share a sortOrder.
     * @param sortOrder the currency' sortOrder
     * @return {@link List}<{@link Resource}<{@link LLCurrencyEntity}>>
     */
    @RequestMapping(path = "sort_order/{sortOrder}",
            method = RequestMethod.GET)
    public List<Resource<LLCurrencyEntity>> getBySortOrder(
            @PathVariable final Long sortOrder) {
        Iterator<LLCurrencyEntity> iter = repository.findBySortOrder(sortOrder)
                .iterator();
        List<Resource<LLCurrencyEntity>> resources =
                new ArrayList<Resource<LLCurrencyEntity>>();
        while (iter.hasNext()) {
            resources.add(getCurrencyResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
