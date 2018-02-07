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

import com.osrapi.models.sw_ct.SW_CTIoPcDataEntity;
import com.osrapi.models.sw_ct.SW_CTBackgroundEntity;
import com.osrapi.models.sw_ct.SW_CTGenderEntity;
import com.osrapi.models.sw_ct.SW_CTHomelandEntity;
import com.osrapi.models.sw_ct.SW_CTGroupEntity;

import com.osrapi.repositories.sw_ct.SW_CTIoPcDataRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/io_pc_data")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTIoPcDataController {
    /** the static instance of {@link SW_CTIoPcDataController}. */
    private static SW_CTIoPcDataController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTIoPcDataController}
     */
    public static SW_CTIoPcDataController getInstance() {
        if (instance == null) {
            new SW_CTIoPcDataController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTIoPcDataRepository repository;
    /** Creates a new instance of {@link SW_CTIoPcDataController}. */
    public SW_CTIoPcDataController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTIoPcDataEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTIoPcDataEntity>> getAll() {
        Iterator<SW_CTIoPcDataEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTIoPcDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTIoPcDataEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTIoPcDataEntity>> getById(
            @PathVariable final Long id) {
        SW_CTIoPcDataEntity entity = repository.findOne(id);
        List<Resource<SW_CTIoPcDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoPcDataEntity>>();
        resources.add(getIoPcDataResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTIoPcDataEntity}.
     * @param entity the {@link SW_CTIoPcDataEntity}
     * @return {@link Resource}<{@link SW_CTIoPcDataEntity}>
     */
    private Resource<SW_CTIoPcDataEntity> getIoPcDataResource(
            final SW_CTIoPcDataEntity entity) {
        Resource<SW_CTIoPcDataEntity> resource =
                new Resource<SW_CTIoPcDataEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTIoPcDataEntity}s.
     * @param entities the list of {@link SW_CTIoPcDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTIoPcDataEntity>> save(
            @RequestBody final List<SW_CTIoPcDataEntity> entities) {
        List<Resource<SW_CTIoPcDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoPcDataEntity>>();
        Iterator<SW_CTIoPcDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTIoPcDataEntity}.
     * @param entity the {@link SW_CTIoPcDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTIoPcDataEntity>> save(
            @RequestBody final SW_CTIoPcDataEntity entity) {
        if (entity.getGroups() != null
                && !entity.getGroups().isEmpty()) {
            for (int i = entity.getGroups().size() - 1; i >= 0; i--) {
                SW_CTGroupEntity groups = null;
                List<Resource<SW_CTGroupEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = SW_CTGroupController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity SW_CTGroupEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = SW_CTGroupEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity SW_CTGroupEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getGroups().get(i)) != null) {
                            list = (List<Resource<SW_CTGroupEntity>>) method
                                    .invoke(
                                            SW_CTGroupController.getInstance(),
                                            (String) field.get(entity.getGroups().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = SW_CTGroupController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity SW_CTGroupEntity from Controller by code");
            }
            try {
              field = SW_CTGroupEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity SW_CTGroupEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getGroups().get(i)) != null) {
                                list = (List<Resource<SW_CTGroupEntity>>) method
                                        .invoke(
                                                SW_CTGroupController
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
              System.out.println("CANNOT get embedded lookup Entity SW_CTGroupEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    groups = list.get(0).getContent();
                }
                if (groups == null) {
                    groups = (SW_CTGroupEntity) ((Resource) SW_CTGroupController
                            .getInstance()
                            .save(entity.getGroups().get(i)).get(0)).getContent();
                }
                entity.getGroups().set(i, groups);
                list = null;
            }
        }

        if (entity.getBackground() != null
        && entity.getBackground().getId() == null) {
      setBackgroundIdFromRepository(entity);
        }

        if (entity.getGender() != null
        && entity.getGender().getId() == null) {
      setGenderIdFromRepository(entity);
        }

        if (entity.getHomeland() != null
        && entity.getHomeland().getId() == null) {
      setHomelandIdFromRepository(entity);
        }


    
        SW_CTIoPcDataEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTIoPcDataEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTIoPcDataEntity} instance
     */
    private void setIdFromRepository(final SW_CTIoPcDataEntity entity) {
        List<SW_CTIoPcDataEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTIoPcDataEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SW_CTIoPcDataEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTIoPcDataEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTIoPcDataEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SW_CTIoPcDataEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTIoPcDataEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SW_CTIoPcDataEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SW_CTIoPcDataEntity}s.
     * @param entities the list of {@link SW_CTIoPcDataEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTIoPcDataEntity>> update(
            @RequestBody final List<SW_CTIoPcDataEntity> entities) {
        List<Resource<SW_CTIoPcDataEntity>> resources = new ArrayList<Resource<SW_CTIoPcDataEntity>>();
        Iterator<SW_CTIoPcDataEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTIoPcDataEntity}.
     * @param entity the {@link SW_CTIoPcDataEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTIoPcDataEntity>> update(
            @RequestBody final SW_CTIoPcDataEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
        if (entity.getGroups() != null
                && !entity.getGroups().isEmpty()) {
            for (int i = entity.getGroups().size() - 1; i >= 0; i--) {
                SW_CTGroupEntity groups = null;
                List<Resource<SW_CTGroupEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = SW_CTGroupController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity SW_CTGroupEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = SW_CTGroupEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity SW_CTGroupEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getGroups().get(i)) != null) {
                            list = (List<Resource<SW_CTGroupEntity>>) method
                                    .invoke(
                                            SW_CTGroupController.getInstance(),
                                            (String) field.get(entity.getGroups().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = SW_CTGroupController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity SW_CTGroupEntity from Controller by code");
            }
            try {
              field = SW_CTGroupEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity SW_CTGroupEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getGroups().get(i)) != null) {
                                list = (List<Resource<SW_CTGroupEntity>>) method
                                        .invoke(
                                                SW_CTGroupController
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
              System.out.println("CANNOT get embedded lookup Entity SW_CTGroupEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    groups = list.get(0).getContent();
                }
                if (groups == null) {
                    groups = (SW_CTGroupEntity) ((Resource) SW_CTGroupController
                            .getInstance()
                            .save(entity.getGroups().get(i)).get(0)).getContent();
                }
                entity.getGroups().set(i, groups);
                list = null;
            }
        }

        if (entity.getBackground() != null
        && entity.getBackground().getId() == null) {
      setBackgroundIdFromRepository(entity);
        }

        if (entity.getGender() != null
        && entity.getGender().getId() == null) {
      setGenderIdFromRepository(entity);
        }

        if (entity.getHomeland() != null
        && entity.getHomeland().getId() == null) {
      setHomelandIdFromRepository(entity);
        }


    
        SW_CTIoPcDataEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTIoPcDataEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

  private void setBackgroundIdFromRepository(
      final SW_CTIoPcDataEntity entity) {
    SW_CTBackgroundEntity memberEntity = null;
    List<Resource<SW_CTBackgroundEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = SW_CTBackgroundController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = SW_CTBackgroundEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getBackground()) != null) {
          list = (List<Resource<SW_CTBackgroundEntity>>) method
              .invoke(
                  SW_CTBackgroundController.getInstance(),
                  (String) field
                      .get(entity.getBackground()));
        }
      }
      if (list == null) {
        try {
          method = SW_CTBackgroundController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = SW_CTBackgroundEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getBackground()) != null) {
            list = (List<Resource<SW_CTBackgroundEntity>>)
                method.invoke(SW_CTBackgroundController
                    .getInstance(),(String) field.get(
                        entity.getBackground()));
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
      memberEntity = (SW_CTBackgroundEntity)
          ((Resource) SW_CTBackgroundController.getInstance().save(
              entity.getBackground()).get(0)).getContent();
    }
    entity.setBackground(memberEntity);
    list = null;
    }

  private void setGenderIdFromRepository(
      final SW_CTIoPcDataEntity entity) {
    SW_CTGenderEntity memberEntity = null;
    List<Resource<SW_CTGenderEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = SW_CTGenderController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = SW_CTGenderEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getGender()) != null) {
          list = (List<Resource<SW_CTGenderEntity>>) method
              .invoke(
                  SW_CTGenderController.getInstance(),
                  (String) field
                      .get(entity.getGender()));
        }
      }
      if (list == null) {
        try {
          method = SW_CTGenderController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = SW_CTGenderEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getGender()) != null) {
            list = (List<Resource<SW_CTGenderEntity>>)
                method.invoke(SW_CTGenderController
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
      memberEntity = (SW_CTGenderEntity)
          ((Resource) SW_CTGenderController.getInstance().save(
              entity.getGender()).get(0)).getContent();
    }
    entity.setGender(memberEntity);
    list = null;
    }

  private void setHomelandIdFromRepository(
      final SW_CTIoPcDataEntity entity) {
    SW_CTHomelandEntity memberEntity = null;
    List<Resource<SW_CTHomelandEntity>> list = null;
    try {
      Method method = null;
      Field field = null;
      try {
        method = SW_CTHomelandController.class.getDeclaredMethod(
            "getByName", new Class[] { String.class });
        field = SW_CTHomelandEntity.class.getDeclaredField("name");
      } catch (NoSuchMethodException | NoSuchFieldException e) {
      }
      if (method != null
          && field != null) {
        field.setAccessible(true);
        if (field.get(entity.getHomeland()) != null) {
          list = (List<Resource<SW_CTHomelandEntity>>) method
              .invoke(
                  SW_CTHomelandController.getInstance(),
                  (String) field
                      .get(entity.getHomeland()));
        }
      }
      if (list == null) {
        try {
          method = SW_CTHomelandController.class.getDeclaredMethod(
              "getByCode", new Class[] { String.class });
          field = SW_CTHomelandEntity.class
              .getDeclaredField("code");
        } catch (NoSuchMethodException | NoSuchFieldException e) {
        }
        if (method != null
            && field != null) {
          field.setAccessible(true);
          if (field.get(entity.getHomeland()) != null) {
            list = (List<Resource<SW_CTHomelandEntity>>)
                method.invoke(SW_CTHomelandController
                    .getInstance(),(String) field.get(
                        entity.getHomeland()));
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
      memberEntity = (SW_CTHomelandEntity)
          ((Resource) SW_CTHomelandController.getInstance().save(
              entity.getHomeland()).get(0)).getContent();
    }
    entity.setHomeland(memberEntity);
    list = null;
    }


    /**
     * Gets a list of {@link SW_CTIoPcDataEntity}s that share a bags.
     * @param bags the io_pc_data' bags
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(path = "bags/{bags}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoPcDataEntity>> getByBags(
            @PathVariable final Long bags) {
        Iterator<SW_CTIoPcDataEntity> iter = repository.findByBags(bags)
                .iterator();
        List<Resource<SW_CTIoPcDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoPcDataEntity}s that share a flags.
     * @param flags the io_pc_data' flags
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(path = "flags/{flags}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoPcDataEntity>> getByFlags(
            @PathVariable final Long flags) {
        Iterator<SW_CTIoPcDataEntity> iter = repository.findByFlags(flags)
                .iterator();
        List<Resource<SW_CTIoPcDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoPcDataEntity}s that share a gold.
     * @param gold the io_pc_data' gold
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(path = "gold/{gold}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoPcDataEntity>> getByGold(
            @PathVariable final float gold) {
        Iterator<SW_CTIoPcDataEntity> iter = repository.findByGold(gold)
                .iterator();
        List<Resource<SW_CTIoPcDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoPcDataEntity}s that share a interfaceFlags.
     * @param interfaceFlags the io_pc_data' interfaceFlags
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(path = "interface_flags/{interfaceFlags}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoPcDataEntity>> getByInterfaceFlags(
            @PathVariable final Long interfaceFlags) {
        Iterator<SW_CTIoPcDataEntity> iter = repository.findByInterfaceFlags(interfaceFlags)
                .iterator();
        List<Resource<SW_CTIoPcDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoPcDataEntity}s that share a internalScript.
     * @param internalScript the io_pc_data' internalScript
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(path = "internal_script/{internalScript}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoPcDataEntity>> getByInternalScript(
            @PathVariable final String internalScript) {
        Iterator<SW_CTIoPcDataEntity> iter = repository.findByInternalScript(internalScript)
                .iterator();
        List<Resource<SW_CTIoPcDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoPcDataEntity}s that share a level.
     * @param level the io_pc_data' level
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(path = "level/{level}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoPcDataEntity>> getByLevel(
            @PathVariable final Long level) {
        Iterator<SW_CTIoPcDataEntity> iter = repository.findByLevel(level)
                .iterator();
        List<Resource<SW_CTIoPcDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link SW_CTIoPcDataEntity}s that share a xp.
     * @param xp the io_pc_data' xp
     * @return {@link List}<{@link Resource}<{@link SW_CTIoPcDataEntity}>>
     */
    @RequestMapping(path = "xp/{xp}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTIoPcDataEntity>> getByXp(
            @PathVariable final Long xp) {
        Iterator<SW_CTIoPcDataEntity> iter = repository.findByXp(xp)
                .iterator();
        List<Resource<SW_CTIoPcDataEntity>> resources =
                new ArrayList<Resource<SW_CTIoPcDataEntity>>();
        while (iter.hasNext()) {
            resources.add(getIoPcDataResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
