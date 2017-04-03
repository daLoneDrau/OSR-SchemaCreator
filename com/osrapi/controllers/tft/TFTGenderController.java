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

import com.osrapi.models.tft.TFTGenderEntity;

import com.osrapi.repositories.tft.TFTGenderRepository;

/**
 * @author drau
 */
@CrossOrigin
@RestController
@RequestMapping(path = "/tft/genders")
@SuppressWarnings({ "unchecked", "rawtypes" })
public class TFTGenderController {
    /** the static instance of {@link TFTGenderController}. */
    private static TFTGenderController instance;
    /**
     * Gets the static instance.
     * @return {@link TFTGenderController}
     */
    public static TFTGenderController getInstance() {
        if (instance == null) {
            new TFTGenderController();
        }
        return instance;
    }
    /** the data repository. */
    @Autowired
    private TFTGenderRepository repository;
    /** Creates a new instance of {@link TFTGenderController}. */
    public TFTGenderController() {
        instance = this;
    }
    /**
     * Gets a list of {@link TFTGenderEntity}s.
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(method = RequestMethod.GET)
    public List<Resource<TFTGenderEntity>> getAll() {
        Iterator<TFTGenderEntity> iter = repository.findAll()
                .iterator();
        List<Resource<TFTGenderEntity>> resources =
                new ArrayList<Resource<TFTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a single {@link TFTGenderEntity}.
     * @param id the event type's id
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public List<Resource<TFTGenderEntity>> getById(
            @PathVariable final Long id) {
        TFTGenderEntity entity = repository.findOne(id);
        List<Resource<TFTGenderEntity>> resources =
                new ArrayList<Resource<TFTGenderEntity>>();
        resources.add(getGenderResource(entity));
        entity = null;
        return resources;
    }
    /**
     * Gets a {@link Resource} instance with links for the
     * {@link TFTGenderEntity}.
     * @param entity the {@link TFTGenderEntity}
     * @return {@link Resource}<{@link TFTGenderEntity}>
     */
    private Resource<TFTGenderEntity> getGenderResource(
            final TFTGenderEntity entity) {
        Resource<TFTGenderEntity> resource =
                new Resource<TFTGenderEntity>(
                entity);
        // link to entity
        resource.add(ControllerLinkBuilder.linkTo(
                ControllerLinkBuilder.methodOn(getClass()).getById(
                        entity.getId()))
                .withSelfRel());
        return resource;
    }
    /**
     * Saves multiple {@link TFTGenderEntity}s.
     * @param entities the list of {@link TFTGenderEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.POST)
    public List<Resource<TFTGenderEntity>> save(
            @RequestBody final List<TFTGenderEntity> entities) {
        List<Resource<TFTGenderEntity>> resources =
                new ArrayList<Resource<TFTGenderEntity>>();
        Iterator<TFTGenderEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(save(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Saves a single {@link TFTGenderEntity}.
     * @param entity the {@link TFTGenderEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(method = RequestMethod.POST)
    public List<Resource<TFTGenderEntity>> save(
            @RequestBody final TFTGenderEntity entity) {
    
    
        TFTGenderEntity savedEntity = repository.save(entity);
        List<Resource<TFTGenderEntity>> list =
                getById(savedEntity.getId());
        savedEntity = null;
        return list;
    }
    /**
     * Tries to set the Id for an entity to be saved by locating it in the
     * repository.
     * @param entity the {@link TFTGenderEntity} instance
     */
    private void setIdFromRepository(final TFTGenderEntity entity) {
        List<TFTGenderEntity> old = null;
        try {
            Method method = null;
            Field field = null;
            try {
                method = repository.getClass().getDeclaredMethod(
                        "findByName", new Class[] { String.class });
                field = TFTGenderEntity.class.getDeclaredField("name");
            } catch (NoSuchMethodException | NoSuchFieldException e) {
                // TODO Auto-generated catch block
                System.out.println("Cannot get Entity TFTGenderEntity from Repository by name");
            }
            if (method != null
                    && field != null) {
                field.setAccessible(true);
                if (field.get(entity) != null) {
                    old = (List<TFTGenderEntity>) method.invoke(
              repository, (String) field.get(entity));
                }
            }
            if (old == null
                    || (old != null
                    && old.size() > 1)) {
                try {
                    method = repository.getClass().getDeclaredMethod(
                            "findByCode", new Class[] { String.class });
                    field = TFTGenderEntity.class.getDeclaredField(
                            "code");
                } catch (NoSuchMethodException | NoSuchFieldException e) {
                    // TODO Auto-generated catch block
          System.out.println("Cannot get Entity TFTGenderEntity from Repository by code");
                }
                if (method != null
                        && field != null) {
                    field.setAccessible(true);
                    if (field.get(entity) != null) {
                        old = (List<TFTGenderEntity>) method.invoke(
                                repository, (String) field.get(entity));
                    }
                }
            }
            method = null;
            field = null;
        } catch (SecurityException | IllegalArgumentException
                | IllegalAccessException
                | InvocationTargetException e) {
                System.out.println("Cannot get Entity TFTGenderEntity from Repository by name or code");
        }
        if (old != null
                && old.size() == 1) {
            entity.setId(old.get(0).getId());
        }
        old = null;        
    }
    /**
     * Updates multiple {@link TFTGenderEntity}s.
     * @param entities the list of {@link TFTGenderEntity} instances
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(path = "/bulk", method = RequestMethod.PUT)
    public List<Resource<TFTGenderEntity>> update(
            @RequestBody final List<TFTGenderEntity> entities) {
        List<Resource<TFTGenderEntity>> resources = new ArrayList<Resource<TFTGenderEntity>>();
        Iterator<TFTGenderEntity> iter = entities.iterator();
        while (iter.hasNext()) {
            resources.add(update(iter.next()).get(0));
        }
        iter = null;
        return resources;
    }
    /**
     * Updates a single {@link TFTGenderEntity}.
     * @param entity the {@link TFTGenderEntity} instance
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(method = RequestMethod.PUT)
    public List<Resource<TFTGenderEntity>> update(
            @RequestBody final TFTGenderEntity entity) {        
        if (entity.getId() == null) {
            setIdFromRepository(entity);
        }
    
    
        TFTGenderEntity savedEntity = repository.save(entity);
        List<Resource<TFTGenderEntity>> list = getById(
                savedEntity.getId());
        savedEntity = null;
        return list;
    }

    /**
     * Gets a list of {@link TFTGenderEntity}s that share a description.
     * @param description the gender' description
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(path = "description/{description}",
            method = RequestMethod.GET)
    public List<Resource<TFTGenderEntity>> getByDescription(
            @PathVariable final String description) {
        Iterator<TFTGenderEntity> iter = repository.findByDescription(description)
                .iterator();
        List<Resource<TFTGenderEntity>> resources =
                new ArrayList<Resource<TFTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTGenderEntity}s that share a name.
     * @param name the gender' name
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(path = "name/{name}",
            method = RequestMethod.GET)
    public List<Resource<TFTGenderEntity>> getByName(
            @PathVariable final String name) {
        Iterator<TFTGenderEntity> iter = repository.findByName(name)
                .iterator();
        List<Resource<TFTGenderEntity>> resources =
                new ArrayList<Resource<TFTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTGenderEntity}s that share a subjective.
     * @param subjective the gender' subjective
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(path = "subjective/{subjective}",
            method = RequestMethod.GET)
    public List<Resource<TFTGenderEntity>> getBySubjective(
            @PathVariable final String subjective) {
        Iterator<TFTGenderEntity> iter = repository.findBySubjective(subjective)
                .iterator();
        List<Resource<TFTGenderEntity>> resources =
                new ArrayList<Resource<TFTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTGenderEntity}s that share a objective.
     * @param objective the gender' objective
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(path = "objective/{objective}",
            method = RequestMethod.GET)
    public List<Resource<TFTGenderEntity>> getByObjective(
            @PathVariable final String objective) {
        Iterator<TFTGenderEntity> iter = repository.findByObjective(objective)
                .iterator();
        List<Resource<TFTGenderEntity>> resources =
                new ArrayList<Resource<TFTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTGenderEntity}s that share a dependentPossessive.
     * @param dependentPossessive the gender' dependentPossessive
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(path = "dependent_possessive/{dependentPossessive}",
            method = RequestMethod.GET)
    public List<Resource<TFTGenderEntity>> getByDependentPossessive(
            @PathVariable final String dependentPossessive) {
        Iterator<TFTGenderEntity> iter = repository.findByDependentPossessive(dependentPossessive)
                .iterator();
        List<Resource<TFTGenderEntity>> resources =
                new ArrayList<Resource<TFTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTGenderEntity}s that share a independentPossessive.
     * @param independentPossessive the gender' independentPossessive
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(path = "independent_possessive/{independentPossessive}",
            method = RequestMethod.GET)
    public List<Resource<TFTGenderEntity>> getByIndependentPossessive(
            @PathVariable final String independentPossessive) {
        Iterator<TFTGenderEntity> iter = repository.findByIndependentPossessive(independentPossessive)
                .iterator();
        List<Resource<TFTGenderEntity>> resources =
                new ArrayList<Resource<TFTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTGenderEntity}s that share a reflexive.
     * @param reflexive the gender' reflexive
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(path = "reflexive/{reflexive}",
            method = RequestMethod.GET)
    public List<Resource<TFTGenderEntity>> getByReflexive(
            @PathVariable final String reflexive) {
        Iterator<TFTGenderEntity> iter = repository.findByReflexive(reflexive)
                .iterator();
        List<Resource<TFTGenderEntity>> resources =
                new ArrayList<Resource<TFTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTGenderEntity}s that share a genderOffspring.
     * @param genderOffspring the gender' genderOffspring
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(path = "gender_offspring/{genderOffspring}",
            method = RequestMethod.GET)
    public List<Resource<TFTGenderEntity>> getByGenderOffspring(
            @PathVariable final String genderOffspring) {
        Iterator<TFTGenderEntity> iter = repository.findByGenderOffspring(genderOffspring)
                .iterator();
        List<Resource<TFTGenderEntity>> resources =
                new ArrayList<Resource<TFTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
    /**
     * Gets a list of {@link TFTGenderEntity}s that share a genderParent.
     * @param genderParent the gender' genderParent
     * @return {@link List}<{@link Resource}<{@link TFTGenderEntity}>>
     */
    @RequestMapping(path = "gender_parent/{genderParent}",
            method = RequestMethod.GET)
    public List<Resource<TFTGenderEntity>> getByGenderParent(
            @PathVariable final String genderParent) {
        Iterator<TFTGenderEntity> iter = repository.findByGenderParent(genderParent)
                .iterator();
        List<Resource<TFTGenderEntity>> resources =
                new ArrayList<Resource<TFTGenderEntity>>();
        while (iter.hasNext()) {
            resources.add(getGenderResource(iter.next()));
        }
        iter = null;
        return resources;
    }
}
