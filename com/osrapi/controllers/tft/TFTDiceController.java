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

import com.osrapi.models.tft.TFTDiceEntity;
import com.osrapi.models.tft.TFTDieEntity;

import com.osrapi.repositories.tft.TFTDiceRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/tft/dices")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class TFTDiceController {
    /** the static instance of {@link TFTDiceController}. */
    private static TFTDiceController instance;
    /**
     * Gets the static instance.
     * @return {@link TFTDiceController}
     */
    public static TFTDiceController getInstance() {
        if (instance == null) {
            new TFTDiceController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private TFTDiceRepository repository;
    /** Creates a new instance of {@link TFTDiceController}. */
    public TFTDiceController() {
        instance = this;
    }
    /**
     * Gets a list of {@link TFTDiceEntity}s.
     * @return {@link List}<{@link Resource}<{@link TFTDiceEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<TFTDiceEntity>> getAll() {
        Iterator<TFTDiceEntity> iter = repository.findAll()
                .iterator();
        List<Resource<TFTDiceEntity>> resources =
                new ArrayList<Resource<TFTDiceEntity>>();
        while (iter.hasNext()) {
            resources.add(getDiceResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link TFTDiceEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link TFTDiceEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<TFTDiceEntity>> getById(
            @PathVariable final Long id) {
        TFTDiceEntity entity = repository.findOne(id);
        List<Resource<TFTDiceEntity>> resources =
                new ArrayList<Resource<TFTDiceEntity>>();
        resources.add(getDiceResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link TFTDiceEntity}.
     * @param entity the {@link TFTDiceEntity}
     * @return {@link Resource}<{@link TFTDiceEntity}>
     */
    private Resource<TFTDiceEntity> getDiceResource(
            final TFTDiceEntity entity) {
        Resource<TFTDiceEntity> resource =
                new Resource<TFTDiceEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link TFTDiceEntity}s.
     * @param entities the list of {@link TFTDiceEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTDiceEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<TFTDiceEntity>> save(
            @RequestBody final List<TFTDiceEntity> entities) {
        List<Resource<TFTDiceEntity>> resources =
                new ArrayList<Resource<TFTDiceEntity>>();
        Iterator<TFTDiceEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link TFTDiceEntity}.
     * @param entity the {@link TFTDiceEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTDiceEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<TFTDiceEntity>> save(
            @RequestBody final TFTDiceEntity entity) {
            if (entity.getDie() != null
        && entity.getDie().getId() == null) {
      setDieIdFromRepository(entity);
        }


    
        TFTDiceEntity savedEntity = repository.save(entity);
        List<Resource<TFTDiceEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link TFTDiceEntity} instance
     */
    private void setIdFromRepository(final TFTDiceEntity entity) {
        List<TFTDiceEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = TFTDiceEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity TFTDiceEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<TFTDiceEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = TFTDiceEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity TFTDiceEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<TFTDiceEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity TFTDiceEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link TFTDiceEntity}s.
     * @param entities the list of {@link TFTDiceEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTDiceEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<TFTDiceEntity>> update(
            @RequestBody final List<TFTDiceEntity> entities) {
        List<Resource<TFTDiceEntity>> resources = new ArrayList<Resource<TFTDiceEntity>>();
        Iterator<TFTDiceEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link TFTDiceEntity}.
     * @param entity the {@link TFTDiceEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTDiceEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<TFTDiceEntity>> update(
            @RequestBody final TFTDiceEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
            if (entity.getDie() != null
        && entity.getDie().getId() == null) {
      setDieIdFromRepository(entity);
        }


    
        TFTDiceEntity savedEntity = repository.save(entity);
        List<Resource<TFTDiceEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

  private void setDieIdFromRepository(
      final TFTDiceEntity entity) {
    TFTDieEntity memberEntity = null;
    List<Resource<TFTDieEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = TFTDieController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = TFTDieEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getDie()) != null) {
          list = (List<Resource<TFTDieEntity>>) method
              .invoke(
                  TFTDieController.getInstance(),
                  (String) field
                      .get(entity.getDie()));
        }
      }
      if (list == null) {
        try {
          method = TFTDieController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = TFTDieEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getDie()) != null) {
            list = (List<Resource<TFTDieEntity>>)
                method.invoke(TFTDieController
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
      memberEntity = (TFTDieEntity)
          ((Resource) TFTDieController.getInstance().save(
              entity.getDie()).get(0)).getContent();
    }
    entity.setDie(memberEntity);
    list = null;
    }


    /**
     * Gets a list of {@link TFTDiceEntity}s that share a code.
     * @param code the dice' code
     * @return {@link List}<{@link Resource}<{@link TFTDiceEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<TFTDiceEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<TFTDiceEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<TFTDiceEntity>> resources =
                new ArrayList<Resource<TFTDiceEntity>>();
        while (iter.hasNext()) {
            resources.add(getDiceResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTDiceEntity}s that share a number.
     * @param number the dice' number
     * @return {@link List}<{@link Resource}<{@link TFTDiceEntity}>>
     */
    @RequestMapping(path = "number/{number}",
            method = RequestMethod.GET)
    public List<Resource<TFTDiceEntity>> getByNumber(
            @PathVariable final Long number) {
        Iterator<TFTDiceEntity> iter = repository.findByNumber(number)
                .iterator();
        List<Resource<TFTDiceEntity>> resources =
                new ArrayList<Resource<TFTDiceEntity>>();
        while (iter.hasNext()) {
            resources.add(getDiceResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTDiceEntity}s that share a plus.
     * @param plus the dice' plus
     * @return {@link List}<{@link Resource}<{@link TFTDiceEntity}>>
     */
    @RequestMapping(path = "plus/{plus}",
            method = RequestMethod.GET)
    public List<Resource<TFTDiceEntity>> getByPlus(
            @PathVariable final Long plus) {
        Iterator<TFTDiceEntity> iter = repository.findByPlus(plus)
                .iterator();
        List<Resource<TFTDiceEntity>> resources =
                new ArrayList<Resource<TFTDiceEntity>>();
        while (iter.hasNext()) {
            resources.add(getDiceResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
