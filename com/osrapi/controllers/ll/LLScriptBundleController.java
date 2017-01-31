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

import com.osrapi.models.ll.LLScriptBundleEntity;
import com.osrapi.models.ll.LLScriptActionEntity;

import com.osrapi.repositories.ll.LLScriptBundleRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/ll/script_bundles")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class LLScriptBundleController {
    /** the static instance of {@link LLScriptBundleController}. */
    private static LLScriptBundleController instance;
    /**
     * Gets the static instance.
     * @return {@link LLScriptBundleController}
     */
    public static LLScriptBundleController getInstance() {
        if (instance == null) {
            new LLScriptBundleController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private LLScriptBundleRepository repository;
    /** Creates a new instance of {@link LLScriptBundleController}. */
    public LLScriptBundleController() {
        instance = this;
    }
    /**
     * Gets a list of {@link LLScriptBundleEntity}s.
     * @return {@link List}<{@link Resource}<{@link LLScriptBundleEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<LLScriptBundleEntity>> getAll() {
        Iterator<LLScriptBundleEntity> iter = repository.findAll()
                .iterator();
        List<Resource<LLScriptBundleEntity>> resources =
                new ArrayList<Resource<LLScriptBundleEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptBundleResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link LLScriptBundleEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link LLScriptBundleEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<LLScriptBundleEntity>> getById(
            @PathVariable final Long id) {
        LLScriptBundleEntity entity = repository.findOne(id);
        List<Resource<LLScriptBundleEntity>> resources =
                new ArrayList<Resource<LLScriptBundleEntity>>();
        resources.add(getScriptBundleResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link LLScriptBundleEntity}.
     * @param entity the {@link LLScriptBundleEntity}
     * @return {@link Resource}<{@link LLScriptBundleEntity}>
     */
    private Resource<LLScriptBundleEntity> getScriptBundleResource(
            final LLScriptBundleEntity entity) {
        Resource<LLScriptBundleEntity> resource =
                new Resource<LLScriptBundleEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link LLScriptBundleEntity}s.
     * @param entities the list of {@link LLScriptBundleEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLScriptBundleEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<LLScriptBundleEntity>> save(
            @RequestBody final List<LLScriptBundleEntity> entities) {
        List<Resource<LLScriptBundleEntity>> resources =
                new ArrayList<Resource<LLScriptBundleEntity>>();
        Iterator<LLScriptBundleEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link LLScriptBundleEntity}.
     * @param entity the {@link LLScriptBundleEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLScriptBundleEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<LLScriptBundleEntity>> save(
            @RequestBody final LLScriptBundleEntity entity) {
        if (entity.getScripts() != null
                && !entity.getScripts().isEmpty()) {
            for (int i = entity.getScripts().size() - 1; i >= 0; i--) {
                LLScriptActionEntity scripts = null;
                List<Resource<LLScriptActionEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = LLScriptActionController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = LLScriptActionEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getScripts().get(i)) != null) {
                            list = (List<Resource<LLScriptActionEntity>>) method
                                    .invoke(
                                            LLScriptActionController.getInstance(),
                                            (String) field.get(entity.getScripts().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = LLScriptActionController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = LLScriptActionEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getScripts().get(i)) != null) {
                                list = (List<Resource<LLScriptActionEntity>>) method
                                        .invoke(
                                                LLScriptActionController
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
                    e.printStackTrace();
                }
                if (list != null
                        && !list.isEmpty()) {
                    scripts = list.get(0).getContent();
                }
                if (scripts == null) {
                    scripts = (LLScriptActionEntity) ((Resource) LLScriptActionController
                            .getInstance()
                            .save(entity.getScripts().get(i)).get(0)).getContent();
                }
                entity.getScripts().set(i, scripts);
                list = null;
            }
        }


    
        LLScriptBundleEntity savedEntity = repository.save(entity);
        List<Resource<LLScriptBundleEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link LLScriptBundleEntity} instance
     */
    private void setIdFromRepository(final LLScriptBundleEntity entity) {
        List<LLScriptBundleEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = LLScriptBundleEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<LLScriptBundleEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = LLScriptBundleEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<LLScriptBundleEntity>) method.invoke(
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
     * Updates multiple {@link LLScriptBundleEntity}s.
     * @param entities the list of {@link LLScriptBundleEntity} instances
     * @return {@link List}<{@link Resource}<{@link LLScriptBundleEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<LLScriptBundleEntity>> update(
            @RequestBody final List<LLScriptBundleEntity> entities) {
        List<Resource<LLScriptBundleEntity>> resources = new ArrayList<Resource<LLScriptBundleEntity>>();
        Iterator<LLScriptBundleEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link LLScriptBundleEntity}.
     * @param entity the {@link LLScriptBundleEntity} instance
     * @return {@link List}<{@link Resource}<{@link LLScriptBundleEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<LLScriptBundleEntity>> update(
            @RequestBody final LLScriptBundleEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
        if (entity.getScripts() != null
                && !entity.getScripts().isEmpty()) {
            for (int i = entity.getScripts().size() - 1; i >= 0; i--) {
                LLScriptActionEntity scripts = null;
                List<Resource<LLScriptActionEntity>> list = null;
                try {
                    Method method = null;
          try {
            method = LLScriptActionController.class.getDeclaredMethod(
                "getByName", new Class[] { String.class });
          } catch (NoSuchMethodException e) {
                        e.printStackTrace();
                    }
                    Field field = null;
          try {
            field = LLScriptActionEntity.class
                .getDeclaredField("name");
          } catch (NoSuchFieldException e) {
                        e.printStackTrace();
                    }
                    if (method != null
                            && field != null) {
                        field.setAccessible(true);
                        if (field.get(entity.getScripts().get(i)) != null) {
                            list = (List<Resource<LLScriptActionEntity>>) method
                                    .invoke(
                                            LLScriptActionController.getInstance(),
                                            (String) field.get(entity.getScripts().get(i)));
                        }
                    }
                    if (list == null) {
            try {
              method = LLScriptActionController.class.getDeclaredMethod(
                  "getByCode", new Class[] { String.class });
            } catch (NoSuchMethodException e) {
              e.printStackTrace();
            }
            try {
              field = LLScriptActionEntity.class.getDeclaredField(
                  "code");
            } catch (NoSuchFieldException e) {
              e.printStackTrace();
            }
                        if (method != null
                                && field != null) {
                            field.setAccessible(true);
                            if (field.get(entity.getScripts().get(i)) != null) {
                                list = (List<Resource<LLScriptActionEntity>>) method
                                        .invoke(
                                                LLScriptActionController
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
                    e.printStackTrace();
                }
                if (list != null
                        && !list.isEmpty()) {
                    scripts = list.get(0).getContent();
                }
                if (scripts == null) {
                    scripts = (LLScriptActionEntity) ((Resource) LLScriptActionController
                            .getInstance()
                            .save(entity.getScripts().get(i)).get(0)).getContent();
                }
                entity.getScripts().set(i, scripts);
                list = null;
            }
        }


    
        LLScriptBundleEntity savedEntity = repository.save(entity);
        List<Resource<LLScriptBundleEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link LLScriptBundleEntity}s that share a name.
     * @param name the script_bundle' name
     * @return {@link List}<{@link Resource}<{@link LLScriptBundleEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<LLScriptBundleEntity>> getByName(
            @PathVariable final String name) {
        Iterator<LLScriptBundleEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<LLScriptBundleEntity>> resources =
                new ArrayList<Resource<LLScriptBundleEntity>>();
        while (iter.hasNext()) {
            resources.add(getScriptBundleResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
