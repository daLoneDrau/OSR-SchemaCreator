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

import com.osrapi.models.sw_ct.SW_CTLifeEventEntity;
import com.osrapi.models.sw_ct.SW_CTEquipmentItemModifierEntity;

import com.osrapi.repositories.sw_ct.SW_CTLifeEventRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/life_events")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTLifeEventController {
    /** the static instance of {@link SW_CTLifeEventController}. */
    private static SW_CTLifeEventController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTLifeEventController}
     */
    public static SW_CTLifeEventController getInstance() {
        if (instance == null) {
            new SW_CTLifeEventController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTLifeEventRepository repository;
    /** Creates a new instance of {@link SW_CTLifeEventController}. */
    public SW_CTLifeEventController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTLifeEventEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTLifeEventEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTLifeEventEntity>> getAll() {
        Iterator<SW_CTLifeEventEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTLifeEventEntity>> resources =
                new ArrayList<Resource<SW_CTLifeEventEntity>>();
        while (iter.hasNext()) {
            resources.add(getLifeEventResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTLifeEventEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTLifeEventEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTLifeEventEntity>> getById(
            @PathVariable final Long id) {
        SW_CTLifeEventEntity entity = repository.findOne(id);
        List<Resource<SW_CTLifeEventEntity>> resources =
                new ArrayList<Resource<SW_CTLifeEventEntity>>();
        resources.add(getLifeEventResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTLifeEventEntity}.
     * @param entity the {@link SW_CTLifeEventEntity}
     * @return {@link Resource}<{@link SW_CTLifeEventEntity}>
     */
    private Resource<SW_CTLifeEventEntity> getLifeEventResource(
            final SW_CTLifeEventEntity entity) {
        Resource<SW_CTLifeEventEntity> resource =
                new Resource<SW_CTLifeEventEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTLifeEventEntity}s.
     * @param entities the list of {@link SW_CTLifeEventEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTLifeEventEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTLifeEventEntity>> save(
            @RequestBody final List<SW_CTLifeEventEntity> entities) {
        List<Resource<SW_CTLifeEventEntity>> resources =
                new ArrayList<Resource<SW_CTLifeEventEntity>>();
        Iterator<SW_CTLifeEventEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTLifeEventEntity}.
     * @param entity the {@link SW_CTLifeEventEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTLifeEventEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTLifeEventEntity>> save(
            @RequestBody final SW_CTLifeEventEntity entity) {
        if (entity.getModifiers() != null
                && !entity.getModifiers().isEmpty()) {
            for (int i = entity.getModifiers().size() - 1; i >= 0; i--) {
                SW_CTEquipmentItemModifierEntity modifiers = null;
                List<Resource<SW_CTEquipmentItemModifierEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = SW_CTEquipmentItemModifierController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = SW_CTEquipmentItemModifierEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getModifiers().get(i)) != null) {
                            list = (List<Resource<SW_CTEquipmentItemModifierEntity>>) method
                                    .invoke(
                                            SW_CTEquipmentItemModifierController.getInstance(),
                                            (String) field.get(entity.getModifiers().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = SW_CTEquipmentItemModifierController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = SW_CTEquipmentItemModifierEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getModifiers().get(i)) != null) {
                                list = (List<Resource<SW_CTEquipmentItemModifierEntity>>) method
                                        .invoke(
                                                SW_CTEquipmentItemModifierController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getModifiers().get(i)));
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
                if (list != null
                        && !list.isEmpty()) {
                    modifiers = list.get(0).getContent();
                }
                if (modifiers == null) {
                    modifiers = (SW_CTEquipmentItemModifierEntity) ((Resource) SW_CTEquipmentItemModifierController
                            .getInstance()
                            .save(entity.getModifiers().get(i)).get(0)).getContent();
                }
                entity.getModifiers().set(i, modifiers);
                list = null;
            }
        }


    
        SW_CTLifeEventEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTLifeEventEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTLifeEventEntity} instance
     */
    private void setIdFromRepository(final SW_CTLifeEventEntity entity) {
        List<SW_CTLifeEventEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTLifeEventEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTLifeEventEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTLifeEventEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTLifeEventEntity>) method.invoke(
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
     * Updates multiple {@link SW_CTLifeEventEntity}s.
     * @param entities the list of {@link SW_CTLifeEventEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTLifeEventEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTLifeEventEntity>> update(
            @RequestBody final List<SW_CTLifeEventEntity> entities) {
        List<Resource<SW_CTLifeEventEntity>> resources = new ArrayList<Resource<SW_CTLifeEventEntity>>();
        Iterator<SW_CTLifeEventEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTLifeEventEntity}.
     * @param entity the {@link SW_CTLifeEventEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTLifeEventEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTLifeEventEntity>> update(
            @RequestBody final SW_CTLifeEventEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
        if (entity.getModifiers() != null
                && !entity.getModifiers().isEmpty()) {
            for (int i = entity.getModifiers().size() - 1; i >= 0; i--) {
                SW_CTEquipmentItemModifierEntity modifiers = null;
                List<Resource<SW_CTEquipmentItemModifierEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = SW_CTEquipmentItemModifierController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = SW_CTEquipmentItemModifierEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getModifiers().get(i)) != null) {
                            list = (List<Resource<SW_CTEquipmentItemModifierEntity>>) method
                                    .invoke(
                                            SW_CTEquipmentItemModifierController.getInstance(),
                                            (String) field.get(entity.getModifiers().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = SW_CTEquipmentItemModifierController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = SW_CTEquipmentItemModifierEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getModifiers().get(i)) != null) {
                                list = (List<Resource<SW_CTEquipmentItemModifierEntity>>) method
                                        .invoke(
                                                SW_CTEquipmentItemModifierController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getModifiers().get(i)));
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
                if (list != null
                        && !list.isEmpty()) {
                    modifiers = list.get(0).getContent();
                }
                if (modifiers == null) {
                    modifiers = (SW_CTEquipmentItemModifierEntity) ((Resource) SW_CTEquipmentItemModifierController
                            .getInstance()
                            .save(entity.getModifiers().get(i)).get(0)).getContent();
                }
                entity.getModifiers().set(i, modifiers);
                list = null;
            }
        }


    
        SW_CTLifeEventEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTLifeEventEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTLifeEventEntity}s that share a description.
     * @param description the life_event' description
     * @return {@link List}<{@link Resource}<{@link SW_CTLifeEventEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTLifeEventEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<SW_CTLifeEventEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<SW_CTLifeEventEntity>> resources =
                new ArrayList<Resource<SW_CTLifeEventEntity>>();
        while (iter.hasNext()) {
            resources.add(getLifeEventResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTLifeEventEntity}s that share a name.
     * @param name the life_event' name
     * @return {@link List}<{@link Resource}<{@link SW_CTLifeEventEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTLifeEventEntity>> getByName(
            @PathVariable final String name) {
        Iterator<SW_CTLifeEventEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<SW_CTLifeEventEntity>> resources =
                new ArrayList<Resource<SW_CTLifeEventEntity>>();
        while (iter.hasNext()) {
            resources.add(getLifeEventResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
