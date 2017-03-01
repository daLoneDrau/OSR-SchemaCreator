package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLGenderEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLGenderRepository
extends CrudRepository<LLGenderEntity, Long> {
	/**
	 * Retrieves a list of genders by their description.
	 * @param description the description
	 * @return {@link List}<{@link LLGenderEntity}>
	 */
	List<LLGenderEntity> findByDescription(String description);
	/**
	 * Retrieves a list of genders by their name.
	 * @param name the name
	 * @return {@link List}<{@link LLGenderEntity}>
	 */
	List<LLGenderEntity> findByName(String name);
}
