package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTGenderEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTGenderRepository
extends CrudRepository<SW_CTGenderEntity, Long> {
	/**
	 * Retrieves a list of genders by their description.
	 * @param description the description
	 * @return {@link List}<{@link SW_CTGenderEntity}>
	 */
	List<SW_CTGenderEntity> findByDescription(String description);
	/**
	 * Retrieves a list of genders by their name.
	 * @param name the name
	 * @return {@link List}<{@link SW_CTGenderEntity}>
	 */
	List<SW_CTGenderEntity> findByName(String name);
}
