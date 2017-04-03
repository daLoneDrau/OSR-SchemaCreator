package com.osrapi.repositories.tft;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.tft.TFTGenderEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface TFTGenderRepository
extends CrudRepository<TFTGenderEntity, Long> {
	/**
	 * Retrieves a list of genders by their description.
	 * @param description the description
	 * @return {@link List}<{@link TFTGenderEntity}>
	 */
	List<TFTGenderEntity> findByDescription(String description);
	/**
	 * Retrieves a list of genders by their name.
	 * @param name the name
	 * @return {@link List}<{@link TFTGenderEntity}>
	 */
	List<TFTGenderEntity> findByName(String name);
	/**
	 * Retrieves a list of genders by their subjective.
	 * @param subjective the subjective
	 * @return {@link List}<{@link TFTGenderEntity}>
	 */
	List<TFTGenderEntity> findBySubjective(String subjective);
	/**
	 * Retrieves a list of genders by their objective.
	 * @param objective the objective
	 * @return {@link List}<{@link TFTGenderEntity}>
	 */
	List<TFTGenderEntity> findByObjective(String objective);
	/**
	 * Retrieves a list of genders by their dependentPossessive.
	 * @param dependentPossessive the dependentPossessive
	 * @return {@link List}<{@link TFTGenderEntity}>
	 */
	List<TFTGenderEntity> findByDependentPossessive(String dependentPossessive);
	/**
	 * Retrieves a list of genders by their independentPossessive.
	 * @param independentPossessive the independentPossessive
	 * @return {@link List}<{@link TFTGenderEntity}>
	 */
	List<TFTGenderEntity> findByIndependentPossessive(String independentPossessive);
	/**
	 * Retrieves a list of genders by their reflexive.
	 * @param reflexive the reflexive
	 * @return {@link List}<{@link TFTGenderEntity}>
	 */
	List<TFTGenderEntity> findByReflexive(String reflexive);
	/**
	 * Retrieves a list of genders by their genderOffspring.
	 * @param genderOffspring the genderOffspring
	 * @return {@link List}<{@link TFTGenderEntity}>
	 */
	List<TFTGenderEntity> findByGenderOffspring(String genderOffspring);
	/**
	 * Retrieves a list of genders by their genderParent.
	 * @param genderParent the genderParent
	 * @return {@link List}<{@link TFTGenderEntity}>
	 */
	List<TFTGenderEntity> findByGenderParent(String genderParent);
}
