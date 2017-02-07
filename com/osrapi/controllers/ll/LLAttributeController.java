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

import com.osrapi.models.ll.LLAttributeEntity;

import com.osrapi.repositories.ll.LLAttributeRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/attributes")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLAttributeController {
    /** the static instance of {@link LLAttributeController}. */
    private static LLAttributeController instance;
    /**
     * Gets the static instance.
     * @return {@link LLAttributeController}
     */
    public static LLAttributeController getInstance() {
        if (instance == null) {
            new LLAttributeController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLAttributeRepository repository;
    /** Creates a new instance of {@link LLAttributeController}. */
    public LLAttributeController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLAttributeEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLAttributeEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLAttributeEntity>> getAll() {
        Iterator<LLAttributeEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLAttributeEntity>> resources =
                new ArrayList<Resource<LLAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLAttributeEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLAttributeEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLAttributeEntity>> getById(
            @PathVariable final Long id) {
        LLAttributeEntity entity = repository.findOne(id);
        List<Resource<LLAttributeEntity>> resources =
                new ArrayList<Resource<LLAttributeEntity>>();
        resources.add(getAttributeResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLAttributeEntity}.
     * @param entity the {@link LLAttributeEntity}
     * @return {@link Resource}<{@link LLAttributeEntity}>
     */
    private Resource<LLAttributeEntity> getAttributeResource(
            final LLAttributeEntity entity) {
        Resource<LLAttributeEntity> resource =
                new Resource<LLAttributeEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLAttributeEntity}s.
     * @param entities the list of {@link LLAttributeEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLAttributeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLAttributeEntity>> save(
            @RequestBody final List<LLAttributeEntity> entities) {
        List<Resource<LLAttributeEntity>> resources =
                new ArrayList<Resource<LLAttributeEntity>>();
        Iterator<LLAttributeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLAttributeEntity}.
     * @param entity the {@link LLAttributeEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLAttributeEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLAttributeEntity>> save(
            @RequestBody final LLAttributeEntity entity) {
    
    
        LLAttributeEntity savedEntity = repository.save(entity);
        List<Resource<LLAttributeEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLAttributeEntity} instance
     */
    private void setIdFromRepository(final LLAttributeEntity entity) {
        List<LLAttributeEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLAttributeEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLAttributeEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLAttributeEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLAttributeEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLAttributeEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLAttributeEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLAttributeEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLAttributeEntity}s.
     * @param entities the list of {@link LLAttributeEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLAttributeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLAttributeEntity>> update(
            @RequestBody final List<LLAttributeEntity> entities) {
        List<Resource<LLAttributeEntity>> resources = new ArrayList<Resource<LLAttributeEntity>>();
        Iterator<LLAttributeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLAttributeEntity}.
     * @param entity the {@link LLAttributeEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLAttributeEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLAttributeEntity>> update(
            @RequestBody final LLAttributeEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        LLAttributeEntity savedEntity = repository.save(entity);
        List<Resource<LLAttributeEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLAttributeEntity}s that share a code.
     * @param code the attribute' code
     * @return {@link List}<{@link Resource}<{@link LLAttributeEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<LLAttributeEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<LLAttributeEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<LLAttributeEntity>> resources =
                new ArrayList<Resource<LLAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLAttributeEntity}s that share a description.
     * @param description the attribute' description
     * @return {@link List}<{@link Resource}<{@link LLAttributeEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<LLAttributeEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<LLAttributeEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<LLAttributeEntity>> resources =
                new ArrayList<Resource<LLAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLAttributeEntity}s that share a name.
     * @param name the attribute' name
     * @return {@link List}<{@link Resource}<{@link LLAttributeEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<LLAttributeEntity>> getByName(
            @PathVariable final String name) {
        Iterator<LLAttributeEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<LLAttributeEntity>> resources =
                new ArrayList<Resource<LLAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
