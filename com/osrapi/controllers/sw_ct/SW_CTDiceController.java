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

import com.osrapi.models.sw_ct.SW_CTDiceEntity;
import com.osrapi.models.sw_ct.SW_CTDieEntity;

import com.osrapi.repositories.sw_ct.SW_CTDiceRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/dices")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTDiceController {
    /** the static instance of {@link SW_CTDiceController}. */
    private static SW_CTDiceController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTDiceController}
     */
    public static SW_CTDiceController getInstance() {
        if (instance == null) {
            new SW_CTDiceController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTDiceRepository repository;
    /** Creates a new instance of {@link SW_CTDiceController}. */
    public SW_CTDiceController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTDiceEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTDiceEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTDiceEntity>> getAll() {
        Iterator<SW_CTDiceEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTDiceEntity>> resources =
                new ArrayList<Resource<SW_CTDiceEntity>>();
        while (iter.hasNext()) {
            resources.add(getDiceResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTDiceEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTDiceEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTDiceEntity>> getById(
            @PathVariable final Long id) {
        SW_CTDiceEntity entity = repository.findOne(id);
        List<Resource<SW_CTDiceEntity>> resources =
                new ArrayList<Resource<SW_CTDiceEntity>>();
        resources.add(getDiceResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTDiceEntity}.
     * @param entity the {@link SW_CTDiceEntity}
     * @return {@link Resource}<{@link SW_CTDiceEntity}>
     */
    private Resource<SW_CTDiceEntity> getDiceResource(
            final SW_CTDiceEntity entity) {
        Resource<SW_CTDiceEntity> resource =
                new Resource<SW_CTDiceEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTDiceEntity}s.
     * @param entities the list of {@link SW_CTDiceEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTDiceEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTDiceEntity>> save(
            @RequestBody final List<SW_CTDiceEntity> entities) {
        List<Resource<SW_CTDiceEntity>> resources =
                new ArrayList<Resource<SW_CTDiceEntity>>();
        Iterator<SW_CTDiceEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTDiceEntity}.
     * @param entity the {@link SW_CTDiceEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTDiceEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTDiceEntity>> save(
            @RequestBody final SW_CTDiceEntity entity) {
            if (entity.getDie() != null
        && entity.getDie().getId() == null) {
      setDieIdFromRepository(entity);
        }


    
        SW_CTDiceEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTDiceEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTDiceEntity} instance
     */
    private void setIdFromRepository(final SW_CTDiceEntity entity) {
        List<SW_CTDiceEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTDiceEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SW_CTDiceEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTDiceEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTDiceEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SW_CTDiceEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTDiceEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SW_CTDiceEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SW_CTDiceEntity}s.
     * @param entities the list of {@link SW_CTDiceEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTDiceEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTDiceEntity>> update(
            @RequestBody final List<SW_CTDiceEntity> entities) {
        List<Resource<SW_CTDiceEntity>> resources = new ArrayList<Resource<SW_CTDiceEntity>>();
        Iterator<SW_CTDiceEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTDiceEntity}.
     * @param entity the {@link SW_CTDiceEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTDiceEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTDiceEntity>> update(
            @RequestBody final SW_CTDiceEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
            if (entity.getDie() != null
        && entity.getDie().getId() == null) {
      setDieIdFromRepository(entity);
        }


    
        SW_CTDiceEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTDiceEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

  private void setDieIdFromRepository(
      final SW_CTDiceEntity entity) {
    SW_CTDieEntity memberEntity = null;
    List<Resource<SW_CTDieEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = SW_CTDieController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = SW_CTDieEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getDie()) != null) {
          list = (List<Resource<SW_CTDieEntity>>) method
              .invoke(
                  SW_CTDieController.getInstance(),
                  (String) field
                      .get(entity.getDie()));
        }
      }
      if (list == null) {
        try {
          method = SW_CTDieController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = SW_CTDieEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getDie()) != null) {
            list = (List<Resource<SW_CTDieEntity>>)
                method.invoke(SW_CTDieController
                    .getInstance(),(String) field.get(
                        entity.getDie()));
          }
        }
      }
      method = null;
      field = null;
    } catch (SecurityException | IllegalArgumentException
        | IllegalAccessException
        | InvocationTargetException e) {
    }
    if (list != null
        && !list.isEmpty()) {
      memberEntity = list.get(0).getContent();
    }
    if (memberEntity == null) {
      memberEntity = (SW_CTDieEntity)
          ((Resource) SW_CTDieController.getInstance().save(
              entity.getDie()).get(0)).getContent();
    }
    entity.setDie(memberEntity);
    list = null;
    }


    /**
     * Gets a list of {@link SW_CTDiceEntity}s that share a code.
     * @param code the dice' code
     * @return {@link List}<{@link Resource}<{@link SW_CTDiceEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTDiceEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<SW_CTDiceEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<SW_CTDiceEntity>> resources =
                new ArrayList<Resource<SW_CTDiceEntity>>();
        while (iter.hasNext()) {
            resources.add(getDiceResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTDiceEntity}s that share a number.
     * @param number the dice' number
     * @return {@link List}<{@link Resource}<{@link SW_CTDiceEntity}>>
     */
    @RequestMapping(path = "number/{number}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTDiceEntity>> getByNumber(
            @PathVariable final Long number) {
        Iterator<SW_CTDiceEntity> iter = repository.findByNumber(number)
                .iterator();
        List<Resource<SW_CTDiceEntity>> resources =
                new ArrayList<Resource<SW_CTDiceEntity>>();
        while (iter.hasNext()) {
            resources.add(getDiceResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTDiceEntity}s that share a plus.
     * @param plus the dice' plus
     * @return {@link List}<{@link Resource}<{@link SW_CTDiceEntity}>>
     */
    @RequestMapping(path = "plus/{plus}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTDiceEntity>> getByPlus(
            @PathVariable final Long plus) {
        Iterator<SW_CTDiceEntity> iter = repository.findByPlus(plus)
                .iterator();
        List<Resource<SW_CTDiceEntity>> resources =
                new ArrayList<Resource<SW_CTDiceEntity>>();
        while (iter.hasNext()) {
            resources.add(getDiceResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
