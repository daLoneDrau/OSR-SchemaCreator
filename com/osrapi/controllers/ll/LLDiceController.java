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

import com.osrapi.models.ll.LLDiceEntity;
import com.osrapi.models.ll.LLDieEntity;

import com.osrapi.repositories.ll.LLDiceRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/dices")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLDiceController {
    /** the static instance of {@link LLDiceController}. */
    private static LLDiceController instance;
    /**
     * Gets the static instance.
     * @return {@link LLDiceController}
     */
    public static LLDiceController getInstance() {
        if (instance == null) {
            new LLDiceController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLDiceRepository repository;
    /** Creates a new instance of {@link LLDiceController}. */
    public LLDiceController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLDiceEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLDiceEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLDiceEntity>> getAll() {
        Iterator<LLDiceEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLDiceEntity>> resources =
                new ArrayList<Resource<LLDiceEntity>>();
        while (iter.hasNext()) {
            resources.add(getDiceResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLDiceEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLDiceEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLDiceEntity>> getById(
            @PathVariable final Long id) {
        LLDiceEntity entity = repository.findOne(id);
        List<Resource<LLDiceEntity>> resources =
                new ArrayList<Resource<LLDiceEntity>>();
        resources.add(getDiceResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLDiceEntity}.
     * @param entity the {@link LLDiceEntity}
     * @return {@link Resource}<{@link LLDiceEntity}>
     */
    private Resource<LLDiceEntity> getDiceResource(
            final LLDiceEntity entity) {
        Resource<LLDiceEntity> resource =
                new Resource<LLDiceEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLDiceEntity}s.
     * @param entities the list of {@link LLDiceEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLDiceEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLDiceEntity>> save(
            @RequestBody final List<LLDiceEntity> entities) {
        List<Resource<LLDiceEntity>> resources =
                new ArrayList<Resource<LLDiceEntity>>();
        Iterator<LLDiceEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLDiceEntity}.
     * @param entity the {@link LLDiceEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLDiceEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLDiceEntity>> save(
            @RequestBody final LLDiceEntity entity) {
            if (entity.getDie() != null
        && entity.getDie().getId() == null) {
      setDieIdFromRepository(entity);
        }


    
        LLDiceEntity savedEntity = repository.save(entity);
        List<Resource<LLDiceEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLDiceEntity} instance
     */
    private void setIdFromRepository(final LLDiceEntity entity) {
        List<LLDiceEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLDiceEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLDiceEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLDiceEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLDiceEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLDiceEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLDiceEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLDiceEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLDiceEntity}s.
     * @param entities the list of {@link LLDiceEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLDiceEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLDiceEntity>> update(
            @RequestBody final List<LLDiceEntity> entities) {
        List<Resource<LLDiceEntity>> resources = new ArrayList<Resource<LLDiceEntity>>();
        Iterator<LLDiceEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLDiceEntity}.
     * @param entity the {@link LLDiceEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLDiceEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLDiceEntity>> update(
            @RequestBody final LLDiceEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
            if (entity.getDie() != null
        && entity.getDie().getId() == null) {
      setDieIdFromRepository(entity);
        }


    
        LLDiceEntity savedEntity = repository.save(entity);
        List<Resource<LLDiceEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

  private void setDieIdFromRepository(
      final LLDiceEntity entity) {
    LLDieEntity memberEntity = null;
    List<Resource<LLDieEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = LLDieController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = LLDieEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getDie()) != null) {
          list = (List<Resource<LLDieEntity>>) method
              .invoke(
                  LLDieController.getInstance(),
                  (String) field
                      .get(entity.getDie()));
        }
      }
      if (list == null) {
        try {
          method = LLDieController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = LLDieEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getDie()) != null) {
            list = (List<Resource<LLDieEntity>>)
                method.invoke(LLDieController
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
      memberEntity = (LLDieEntity)
          ((Resource) LLDieController.getInstance().save(
              entity.getDie()).get(0)).getContent();
    }
    entity.setDie(memberEntity);
    list = null;
    }


    /**
     * Gets a list of {@link LLDiceEntity}s that share a code.
     * @param code the dice' code
     * @return {@link List}<{@link Resource}<{@link LLDiceEntity}>>
     */
    @RequestMapping(path = "code/{code}",
            method = RequestMethod.GET)
    public List<Resource<LLDiceEntity>> getByCode(
            @PathVariable final String code) {
        Iterator<LLDiceEntity> iter = repository.findByCode(code)
                .iterator();
        List<Resource<LLDiceEntity>> resources =
                new ArrayList<Resource<LLDiceEntity>>();
        while (iter.hasNext()) {
            resources.add(getDiceResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLDiceEntity}s that share a number.
     * @param number the dice' number
     * @return {@link List}<{@link Resource}<{@link LLDiceEntity}>>
     */
    @RequestMapping(path = "number/{number}",
            method = RequestMethod.GET)
    public List<Resource<LLDiceEntity>> getByNumber(
            @PathVariable final Long number) {
        Iterator<LLDiceEntity> iter = repository.findByNumber(number)
                .iterator();
        List<Resource<LLDiceEntity>> resources =
                new ArrayList<Resource<LLDiceEntity>>();
        while (iter.hasNext()) {
            resources.add(getDiceResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLDiceEntity}s that share a plus.
     * @param plus the dice' plus
     * @return {@link List}<{@link Resource}<{@link LLDiceEntity}>>
     */
    @RequestMapping(path = "plus/{plus}",
            method = RequestMethod.GET)
    public List<Resource<LLDiceEntity>> getByPlus(
            @PathVariable final Long plus) {
        Iterator<LLDiceEntity> iter = repository.findByPlus(plus)
                .iterator();
        List<Resource<LLDiceEntity>> resources =
                new ArrayList<Resource<LLDiceEntity>>();
        while (iter.hasNext()) {
            resources.add(getDiceResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
