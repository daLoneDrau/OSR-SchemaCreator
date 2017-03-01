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

import com.osrapi.models.ll.LLGenderEntity;

import com.osrapi.repositories.ll.LLGenderRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/genders")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLGenderController {
    /** the static instance of {@link LLGenderController}. */
    private static LLGenderController instance;
    /**
     * Gets the static instance.
     * @return {@link LLGenderController}
     */
    public static LLGenderController getInstance() {
        if (instance == null) {
            new LLGenderController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLGenderRepository repository;
    /** Creates a new instance of {@link LLGenderController}. */
    public LLGenderController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLGenderEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLGenderEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLGenderEntity>> getAll() {
        Iterator<LLGenderEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLGenderEntity>> resources =
                new ArrayList<Resource<LLGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLGenderEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLGenderEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLGenderEntity>> getById(
            @PathVariable final Long id) {
        LLGenderEntity entity = repository.findOne(id);
        List<Resource<LLGenderEntity>> resources =
                new ArrayList<Resource<LLGenderEntity>>();
        resources.add(getGenderResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLGenderEntity}.
     * @param entity the {@link LLGenderEntity}
     * @return {@link Resource}<{@link LLGenderEntity}>
     */
    private Resource<LLGenderEntity> getGenderResource(
            final LLGenderEntity entity) {
        Resource<LLGenderEntity> resource =
                new Resource<LLGenderEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLGenderEntity}s.
     * @param entities the list of {@link LLGenderEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLGenderEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLGenderEntity>> save(
            @RequestBody final List<LLGenderEntity> entities) {
        List<Resource<LLGenderEntity>> resources =
                new ArrayList<Resource<LLGenderEntity>>();
        Iterator<LLGenderEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLGenderEntity}.
     * @param entity the {@link LLGenderEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLGenderEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLGenderEntity>> save(
            @RequestBody final LLGenderEntity entity) {
    
    
        LLGenderEntity savedEntity = repository.save(entity);
        List<Resource<LLGenderEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLGenderEntity} instance
     */
    private void setIdFromRepository(final LLGenderEntity entity) {
        List<LLGenderEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLGenderEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLGenderEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLGenderEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLGenderEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLGenderEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLGenderEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLGenderEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLGenderEntity}s.
     * @param entities the list of {@link LLGenderEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLGenderEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLGenderEntity>> update(
            @RequestBody final List<LLGenderEntity> entities) {
        List<Resource<LLGenderEntity>> resources = new ArrayList<Resource<LLGenderEntity>>();
        Iterator<LLGenderEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLGenderEntity}.
     * @param entity the {@link LLGenderEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLGenderEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLGenderEntity>> update(
            @RequestBody final LLGenderEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        LLGenderEntity savedEntity = repository.save(entity);
        List<Resource<LLGenderEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLGenderEntity}s that share a description.
     * @param description the gender' description
     * @return {@link List}<{@link Resource}<{@link LLGenderEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<LLGenderEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<LLGenderEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<LLGenderEntity>> resources =
                new ArrayList<Resource<LLGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLGenderEntity}s that share a name.
     * @param name the gender' name
     * @return {@link List}<{@link Resource}<{@link LLGenderEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<LLGenderEntity>> getByName(
            @PathVariable final String name) {
        Iterator<LLGenderEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<LLGenderEntity>> resources =
                new ArrayList<Resource<LLGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
