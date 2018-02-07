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

import com.osrapi.models.shin_sam.SHIN_SAMAttributeEntity;

import com.osrapi.repositories.shin_sam.SHIN_SAMAttributeRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/shin_sam/attributes")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SHIN_SAMAttributeController {
    /** the static instance of {@link SHIN_SAMAttributeController}. */
    private static SHIN_SAMAttributeController instance;
    /**
     * Gets the static instance.
     * @return {@link SHIN_SAMAttributeController}
     */
    public static SHIN_SAMAttributeController getInstance() {
        if (instance == null) {
            new SHIN_SAMAttributeController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SHIN_SAMAttributeRepository repository;
    /** Creates a new instance of {@link SHIN_SAMAttributeController}. */
    public SHIN_SAMAttributeController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SHIN_SAMAttributeEntity}s.
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMAttributeEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SHIN_SAMAttributeEntity>> getAll() {
        Iterator<SHIN_SAMAttributeEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SHIN_SAMAttributeEntity>> resources =
                new ArrayList<Resource<SHIN_SAMAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SHIN_SAMAttributeEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMAttributeEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SHIN_SAMAttributeEntity>> getById(
            @PathVariable final Long id) {
        SHIN_SAMAttributeEntity entity = repository.findOne(id);
        List<Resource<SHIN_SAMAttributeEntity>> resources =
                new ArrayList<Resource<SHIN_SAMAttributeEntity>>();
        resources.add(getAttributeResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SHIN_SAMAttributeEntity}.
     * @param entity the {@link SHIN_SAMAttributeEntity}
     * @return {@link Resource}<{@link SHIN_SAMAttributeEntity}>
     */
    private Resource<SHIN_SAMAttributeEntity> getAttributeResource(
            final SHIN_SAMAttributeEntity entity) {
        Resource<SHIN_SAMAttributeEntity> resource =
                new Resource<SHIN_SAMAttributeEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SHIN_SAMAttributeEntity}s.
     * @param entities the list of {@link SHIN_SAMAttributeEntity} instances
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMAttributeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SHIN_SAMAttributeEntity>> save(
            @RequestBody final List<SHIN_SAMAttributeEntity> entities) {
        List<Resource<SHIN_SAMAttributeEntity>> resources =
                new ArrayList<Resource<SHIN_SAMAttributeEntity>>();
        Iterator<SHIN_SAMAttributeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SHIN_SAMAttributeEntity}.
     * @param entity the {@link SHIN_SAMAttributeEntity} instance
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMAttributeEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SHIN_SAMAttributeEntity>> save(
            @RequestBody final SHIN_SAMAttributeEntity entity) {
    
    
        SHIN_SAMAttributeEntity savedEntity = repository.save(entity);
        List<Resource<SHIN_SAMAttributeEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SHIN_SAMAttributeEntity} instance
     */
    private void setIdFromRepository(final SHIN_SAMAttributeEntity entity) {
        List<SHIN_SAMAttributeEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SHIN_SAMAttributeEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SHIN_SAMAttributeEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SHIN_SAMAttributeEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SHIN_SAMAttributeEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SHIN_SAMAttributeEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SHIN_SAMAttributeEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SHIN_SAMAttributeEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SHIN_SAMAttributeEntity}s.
     * @param entities the list of {@link SHIN_SAMAttributeEntity} instances
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMAttributeEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SHIN_SAMAttributeEntity>> update(
            @RequestBody final List<SHIN_SAMAttributeEntity> entities) {
        List<Resource<SHIN_SAMAttributeEntity>> resources = new ArrayList<Resource<SHIN_SAMAttributeEntity>>();
        Iterator<SHIN_SAMAttributeEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SHIN_SAMAttributeEntity}.
     * @param entity the {@link SHIN_SAMAttributeEntity} instance
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMAttributeEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SHIN_SAMAttributeEntity>> update(
            @RequestBody final SHIN_SAMAttributeEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        SHIN_SAMAttributeEntity savedEntity = repository.save(entity);
        List<Resource<SHIN_SAMAttributeEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SHIN_SAMAttributeEntity}s that share a code.
     * @param code the attribute' code
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMAttributeEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<SHIN_SAMAttributeEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<SHIN_SAMAttributeEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<SHIN_SAMAttributeEntity>> resources =
                new ArrayList<Resource<SHIN_SAMAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SHIN_SAMAttributeEntity}s that share a description.
     * @param description the attribute' description
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMAttributeEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<SHIN_SAMAttributeEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<SHIN_SAMAttributeEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<SHIN_SAMAttributeEntity>> resources =
                new ArrayList<Resource<SHIN_SAMAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SHIN_SAMAttributeEntity}s that share a name.
     * @param name the attribute' name
     * @return {@link List}<{@link Resource}<{@link SHIN_SAMAttributeEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<SHIN_SAMAttributeEntity>> getByName(
            @PathVariable final String name) {
        Iterator<SHIN_SAMAttributeEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<SHIN_SAMAttributeEntity>> resources =
                new ArrayList<Resource<SHIN_SAMAttributeEntity>>();
        while (iter.hasNext()) {
            resources.add(getAttributeResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
