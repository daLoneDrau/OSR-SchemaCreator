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

import com.osrapi.models.ll.LLIoPcDataEntity;
import com.osrapi.models.ll.LLGenderEntity;
import com.osrapi.models.ll.LLGroupEntity;

import com.osrapi.repositories.ll.LLIoPcDataRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/io_pc_data")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLIoPcDataController {
    /** the static instance of {@link LLIoPcDataController}. */
    private static LLIoPcDataController instance;
    /**
     * Gets the static instance.
     * @return {@link LLIoPcDataController}
     */
    public static LLIoPcDataController getInstance() {
        if (instance == null) {
            new LLIoPcDataController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLIoPcDataRepository repository;
    /** Creates a new instance of {@link LLIoPcDataController}. */
    public LLIoPcDataController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLIoPcDataEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLIoPcDataEntity>> getAll() {
        Iterator<LLIoPcDataEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLIoPcDataEntity>> resources =
                new ArrayList<Resource<LLIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLIoPcDataEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLIoPcDataEntity>> getById(
            @PathVariable final Long id) {
        LLIoPcDataEntity entity = repository.findOne(id);
        List<Resource<LLIoPcDataEntity>> resources =
                new ArrayList<Resource<LLIoPcDataEntity>>();
        resources.add(getIoPcDataResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLIoPcDataEntity}.
     * @param entity the {@link LLIoPcDataEntity}
     * @return {@link Resource}<{@link LLIoPcDataEntity}>
     */
    private Resource<LLIoPcDataEntity> getIoPcDataResource(
            final LLIoPcDataEntity entity) {
        Resource<LLIoPcDataEntity> resource =
                new Resource<LLIoPcDataEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLIoPcDataEntity}s.
     * @param entities the list of {@link LLIoPcDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLIoPcDataEntity>> save(
            @RequestBody final List<LLIoPcDataEntity> entities) {
        List<Resource<LLIoPcDataEntity>> resources =
                new ArrayList<Resource<LLIoPcDataEntity>>();
        Iterator<LLIoPcDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLIoPcDataEntity}.
     * @param entity the {@link LLIoPcDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLIoPcDataEntity>> save(
            @RequestBody final LLIoPcDataEntity entity) {
        if (entity.getGroups() != null
                && !entity.getGroups().isEmpty()) {
            for (int i = entity.getGroups().size() - 1; i >= 0; i--) {
                LLGroupEntity groups = null;
                List<Resource<LLGroupEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = LLGroupController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity LLGroupEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = LLGroupEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity LLGroupEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getGroups().get(i)) != null) {
                            list = (List<Resource<LLGroupEntity>>) method
                                    .invoke(
                                            LLGroupController.getInstance(),
                                            (String) field.get(entity.getGroups().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = LLGroupController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity LLGroupEntity from Controller by code");
            }
            try {
              field = LLGroupEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity LLGroupEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getGroups().get(i)) != null) {
                                list = (List<Resource<LLGroupEntity>>) method
                                        .invoke(
                                                LLGroupController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getGroups().get(i)));
                            }
                        }
                    }
                    method = null;
                    field = null;
                } catch (SecurityException | IllegalArgumentException
                        | IllegalAccessException
                        | InvocationTargetException e) {
              System.out.println("CANNOT get embedded lookup Entity LLGroupEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    groups = list.get(0).getContent();
                }
                if (groups == null) {
                    groups = (LLGroupEntity) ((Resource) LLGroupController
                            .getInstance()
                            .save(entity.getGroups().get(i)).get(0)).getContent();
                }
                entity.getGroups().set(i, groups);
                list = null;
            }
        }

        if (entity.getGender() != null
        && entity.getGender().getId() == null) {
      setGenderIdFromRepository(entity);
        }


    
        LLIoPcDataEntity savedEntity = repository.save(entity);
        List<Resource<LLIoPcDataEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLIoPcDataEntity} instance
     */
    private void setIdFromRepository(final LLIoPcDataEntity entity) {
        List<LLIoPcDataEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLIoPcDataEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity LLIoPcDataEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLIoPcDataEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLIoPcDataEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity LLIoPcDataEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLIoPcDataEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity LLIoPcDataEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link LLIoPcDataEntity}s.
     * @param entities the list of {@link LLIoPcDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLIoPcDataEntity>> update(
            @RequestBody final List<LLIoPcDataEntity> entities) {
        List<Resource<LLIoPcDataEntity>> resources = new ArrayList<Resource<LLIoPcDataEntity>>();
        Iterator<LLIoPcDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLIoPcDataEntity}.
     * @param entity the {@link LLIoPcDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLIoPcDataEntity>> update(
            @RequestBody final LLIoPcDataEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
        if (entity.getGroups() != null
                && !entity.getGroups().isEmpty()) {
            for (int i = entity.getGroups().size() - 1; i >= 0; i--) {
                LLGroupEntity groups = null;
                List<Resource<LLGroupEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = LLGroupController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity LLGroupEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = LLGroupEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity LLGroupEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getGroups().get(i)) != null) {
                            list = (List<Resource<LLGroupEntity>>) method
                                    .invoke(
                                            LLGroupController.getInstance(),
                                            (String) field.get(entity.getGroups().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = LLGroupController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity LLGroupEntity from Controller by code");
            }
            try {
              field = LLGroupEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity LLGroupEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getGroups().get(i)) != null) {
                                list = (List<Resource<LLGroupEntity>>) method
                                        .invoke(
                                                LLGroupController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getGroups().get(i)));
                            }
                        }
                    }
                    method = null;
                    field = null;
                } catch (SecurityException | IllegalArgumentException
                        | IllegalAccessException
                        | InvocationTargetException e) {
              System.out.println("CANNOT get embedded lookup Entity LLGroupEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    groups = list.get(0).getContent();
                }
                if (groups == null) {
                    groups = (LLGroupEntity) ((Resource) LLGroupController
                            .getInstance()
                            .save(entity.getGroups().get(i)).get(0)).getContent();
                }
                entity.getGroups().set(i, groups);
                list = null;
            }
        }

        if (entity.getGender() != null
        && entity.getGender().getId() == null) {
      setGenderIdFromRepository(entity);
        }


    
        LLIoPcDataEntity savedEntity = repository.save(entity);
        List<Resource<LLIoPcDataEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

  private void setGenderIdFromRepository(
      final LLIoPcDataEntity entity) {
    LLGenderEntity memberEntity = null;
    List<Resource<LLGenderEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = LLGenderController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = LLGenderEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getGender()) != null) {
          list = (List<Resource<LLGenderEntity>>) method
              .invoke(
                  LLGenderController.getInstance(),
                  (String) field
                      .get(entity.getGender()));
        }
      }
      if (list == null) {
        try {
          method = LLGenderController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = LLGenderEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getGender()) != null) {
            list = (List<Resource<LLGenderEntity>>)
                method.invoke(LLGenderController
                    .getInstance(),(String) field.get(
                        entity.getGender()));
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
      memberEntity = (LLGenderEntity)
          ((Resource) LLGenderController.getInstance().save(
              entity.getGender()).get(0)).getContent();
    }
    entity.setGender(memberEntity);
    list = null;
    }


    /**
     * Gets a list of {@link LLIoPcDataEntity}s that share a bags.
     * @param bags the io_pc_data' bags
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(path = "bags/{bags}",
            method = RequestMethod.GET)
    public List<Resource<LLIoPcDataEntity>> getByBags(
            @PathVariable final Long bags) {
        Iterator<LLIoPcDataEntity> iter = repository.findByBags(bags)
                .iterator();
        List<Resource<LLIoPcDataEntity>> resources =
                new ArrayList<Resource<LLIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoPcDataEntity}s that share a flags.
     * @param flags the io_pc_data' flags
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(path = "flags/{flags}",
            method = RequestMethod.GET)
    public List<Resource<LLIoPcDataEntity>> getByFlags(
            @PathVariable final Long flags) {
        Iterator<LLIoPcDataEntity> iter = repository.findByFlags(flags)
                .iterator();
        List<Resource<LLIoPcDataEntity>> resources =
                new ArrayList<Resource<LLIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoPcDataEntity}s that share a gold.
     * @param gold the io_pc_data' gold
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(path = "gold/{gold}",
            method = RequestMethod.GET)
    public List<Resource<LLIoPcDataEntity>> getByGold(
            @PathVariable final float gold) {
        Iterator<LLIoPcDataEntity> iter = repository.findByGold(gold)
                .iterator();
        List<Resource<LLIoPcDataEntity>> resources =
                new ArrayList<Resource<LLIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoPcDataEntity}s that share a interfaceFlags.
     * @param interfaceFlags the io_pc_data' interfaceFlags
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(path = "interface_flags/{interfaceFlags}",
            method = RequestMethod.GET)
    public List<Resource<LLIoPcDataEntity>> getByInterfaceFlags(
            @PathVariable final Long interfaceFlags) {
        Iterator<LLIoPcDataEntity> iter = repository.findByInterfaceFlags(interfaceFlags)
                .iterator();
        List<Resource<LLIoPcDataEntity>> resources =
                new ArrayList<Resource<LLIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoPcDataEntity}s that share a internalScript.
     * @param internalScript the io_pc_data' internalScript
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(path = "internal_script/{internalScript}",
            method = RequestMethod.GET)
    public List<Resource<LLIoPcDataEntity>> getByInternalScript(
            @PathVariable final String internalScript) {
        Iterator<LLIoPcDataEntity> iter = repository.findByInternalScript(internalScript)
                .iterator();
        List<Resource<LLIoPcDataEntity>> resources =
                new ArrayList<Resource<LLIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoPcDataEntity}s that share a level.
     * @param level the io_pc_data' level
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(path = "level/{level}",
            method = RequestMethod.GET)
    public List<Resource<LLIoPcDataEntity>> getByLevel(
            @PathVariable final Long level) {
        Iterator<LLIoPcDataEntity> iter = repository.findByLevel(level)
                .iterator();
        List<Resource<LLIoPcDataEntity>> resources =
                new ArrayList<Resource<LLIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoPcDataEntity}s that share a module.
     * @param module the io_pc_data' module
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(path = "module/{module}",
            method = RequestMethod.GET)
    public List<Resource<LLIoPcDataEntity>> getByModule(
            @PathVariable final String module) {
        Iterator<LLIoPcDataEntity> iter = repository.findByModule(module)
                .iterator();
        List<Resource<LLIoPcDataEntity>> resources =
                new ArrayList<Resource<LLIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoPcDataEntity}s that share a name.
     * @param name the io_pc_data' name
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<LLIoPcDataEntity>> getByName(
            @PathVariable final String name) {
        Iterator<LLIoPcDataEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<LLIoPcDataEntity>> resources =
                new ArrayList<Resource<LLIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link LLIoPcDataEntity}s that share a xp.
     * @param xp the io_pc_data' xp
     * @return {@link List}<{@link Resource}<{@link LLIoPcDataEntity}>>
     */
    @RequestMapping(path = "xp/{xp}",
            method = RequestMethod.GET)
    public List<Resource<LLIoPcDataEntity>> getByXp(
            @PathVariable final Long xp) {
        Iterator<LLIoPcDataEntity> iter = repository.findByXp(xp)
                .iterator();
        List<Resource<LLIoPcDataEntity>> resources =
                new ArrayList<Resource<LLIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
