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

import com.osrapi.models.sw_ct.SW_CTScriptBundleEntity;
import com.osrapi.models.sw_ct.SW_CTScriptActionEntity;

import com.osrapi.repositories.sw_ct.SW_CTScriptBundleRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/sw_ct/script_bundles")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class SW_CTScriptBundleController {
    /** the static instance of {@link SW_CTScriptBundleController}. */
    private static SW_CTScriptBundleController instance;
    /**
     * Gets the static instance.
     * @return {@link SW_CTScriptBundleController}
     */
    public static SW_CTScriptBundleController getInstance() {
        if (instance == null) {
            new SW_CTScriptBundleController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private SW_CTScriptBundleRepository repository;
    /** Creates a new instance of {@link SW_CTScriptBundleController}. */
    public SW_CTScriptBundleController() {
        instance = this;
    }
    /**
     * Gets a list of {@link SW_CTScriptBundleEntity}s.
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptBundleEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<SW_CTScriptBundleEntity>> getAll() {
        Iterator<SW_CTScriptBundleEntity> iter = repository.findAll()
                .iterator();
        List<Resource<SW_CTScriptBundleEntity>> resources =
                new ArrayList<Resource<SW_CTScriptBundleEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptBundleResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link SW_CTScriptBundleEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptBundleEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<SW_CTScriptBundleEntity>> getById(
            @PathVariable final Long id) {
        SW_CTScriptBundleEntity entity = repository.findOne(id);
        List<Resource<SW_CTScriptBundleEntity>> resources =
                new ArrayList<Resource<SW_CTScriptBundleEntity>>();
        resources.add(getScriptBundleResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link SW_CTScriptBundleEntity}.
     * @param entity the {@link SW_CTScriptBundleEntity}
     * @return {@link Resource}<{@link SW_CTScriptBundleEntity}>
     */
    private Resource<SW_CTScriptBundleEntity> getScriptBundleResource(
            final SW_CTScriptBundleEntity entity) {
        Resource<SW_CTScriptBundleEntity> resource =
                new Resource<SW_CTScriptBundleEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link SW_CTScriptBundleEntity}s.
     * @param entities the list of {@link SW_CTScriptBundleEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptBundleEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<SW_CTScriptBundleEntity>> save(
            @RequestBody final List<SW_CTScriptBundleEntity> entities) {
        List<Resource<SW_CTScriptBundleEntity>> resources =
                new ArrayList<Resource<SW_CTScriptBundleEntity>>();
        Iterator<SW_CTScriptBundleEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link SW_CTScriptBundleEntity}.
     * @param entity the {@link SW_CTScriptBundleEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptBundleEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<SW_CTScriptBundleEntity>> save(
            @RequestBody final SW_CTScriptBundleEntity entity) {
        if (entity.getScripts() != null
                && !entity.getScripts().isEmpty()) {
            for (int i = entity.getScripts().size() - 1; i >= 0; i--) {
                SW_CTScriptActionEntity scripts = null;
                List<Resource<SW_CTScriptActionEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = SW_CTScriptActionController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity SW_CTScriptActionEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = SW_CTScriptActionEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity SW_CTScriptActionEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getScripts().get(i)) != null) {
                            list = (List<Resource<SW_CTScriptActionEntity>>) method
                                    .invoke(
                                            SW_CTScriptActionController.getInstance(),
                                            (String) field.get(entity.getScripts().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = SW_CTScriptActionController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity SW_CTScriptActionEntity from Controller by code");
            }
            try {
              field = SW_CTScriptActionEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity SW_CTScriptActionEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getScripts().get(i)) != null) {
                                list = (List<Resource<SW_CTScriptActionEntity>>) method
                                        .invoke(
                                                SW_CTScriptActionController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getScripts().get(i)));
                            }
                        }
                    }
                    method = null;
                    field = null;
                } catch (SecurityException | IllegalArgumentException
                        | IllegalAccessException
                        | InvocationTargetException e) {
              System.out.println("CANNOT get embedded lookup Entity SW_CTScriptActionEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    scripts = list.get(0).getContent();
                }
                if (scripts == null) {
                    scripts = (SW_CTScriptActionEntity) ((Resource) SW_CTScriptActionController
                            .getInstance()
                            .save(entity.getScripts().get(i)).get(0)).getContent();
                }
                entity.getScripts().set(i, scripts);
                list = null;
            }
        }


    
        SW_CTScriptBundleEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTScriptBundleEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link SW_CTScriptBundleEntity} instance
     */
    private void setIdFromRepository(final SW_CTScriptBundleEntity entity) {
        List<SW_CTScriptBundleEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = SW_CTScriptBundleEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity SW_CTScriptBundleEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<SW_CTScriptBundleEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = SW_CTScriptBundleEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity SW_CTScriptBundleEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<SW_CTScriptBundleEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity SW_CTScriptBundleEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link SW_CTScriptBundleEntity}s.
     * @param entities the list of {@link SW_CTScriptBundleEntity} instances
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptBundleEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<SW_CTScriptBundleEntity>> update(
            @RequestBody final List<SW_CTScriptBundleEntity> entities) {
        List<Resource<SW_CTScriptBundleEntity>> resources = new ArrayList<Resource<SW_CTScriptBundleEntity>>();
        Iterator<SW_CTScriptBundleEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link SW_CTScriptBundleEntity}.
     * @param entity the {@link SW_CTScriptBundleEntity} instance
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptBundleEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<SW_CTScriptBundleEntity>> update(
            @RequestBody final SW_CTScriptBundleEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
        if (entity.getScripts() != null
                && !entity.getScripts().isEmpty()) {
            for (int i = entity.getScripts().size() - 1; i >= 0; i--) {
                SW_CTScriptActionEntity scripts = null;
                List<Resource<SW_CTScriptActionEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = SW_CTScriptActionController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
            System.out.println("Cannot get embedded lookup Entity SW_CTScriptActionEntity from Controller by name");
                    }
                    Field field = null;
          try {
            field = SW_CTScriptActionEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
            System.out.println("Cannot get embedded lookup Entity SW_CTScriptActionEntity from class by name");
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getScripts().get(i)) != null) {
                            list = (List<Resource<SW_CTScriptActionEntity>>) method
                                    .invoke(
                                            SW_CTScriptActionController.getInstance(),
                                            (String) field.get(entity.getScripts().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = SW_CTScriptActionController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              System.out.println("Cannot get embedded lookup Entity SW_CTScriptActionEntity from Controller by code");
            }
            try {
              field = SW_CTScriptActionEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              System.out.println("Cannot get embedded lookup Entity SW_CTScriptActionEntity from class by code");
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getScripts().get(i)) != null) {
                                list = (List<Resource<SW_CTScriptActionEntity>>) method
                                        .invoke(
                                                SW_CTScriptActionController
                                                        .getInstance(),
                                                (String) field
                                                        .get(entity.getScripts().get(i)));
                            }
                        }
                    }
                    method = null;
                    field = null;
                } catch (SecurityException | IllegalArgumentException
                        | IllegalAccessException
                        | InvocationTargetException e) {
              System.out.println("CANNOT get embedded lookup Entity SW_CTScriptActionEntity by name or code");
                }
                if (list != null
                        && !list.isEmpty()) {
                    scripts = list.get(0).getContent();
                }
                if (scripts == null) {
                    scripts = (SW_CTScriptActionEntity) ((Resource) SW_CTScriptActionController
                            .getInstance()
                            .save(entity.getScripts().get(i)).get(0)).getContent();
                }
                entity.getScripts().set(i, scripts);
                list = null;
            }
        }


    
        SW_CTScriptBundleEntity savedEntity = repository.save(entity);
        List<Resource<SW_CTScriptBundleEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link SW_CTScriptBundleEntity}s that share a name.
     * @param name the script_bundle' name
     * @return {@link List}<{@link Resource}<{@link SW_CTScriptBundleEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<SW_CTScriptBundleEntity>> getByName(
            @PathVariable final String name) {
        Iterator<SW_CTScriptBundleEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<SW_CTScriptBundleEntity>> resources =
                new ArrayList<Resource<SW_CTScriptBundleEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptBundleResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
