package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTAttributeEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTAttributeRepository
extends CrudRepository<SW_CTAttributeEntity, Long> {
	/**
	 * Retrieves a list of attributes by their code.
	 * @param code the code
	 * @return {@link List}<{@link SW_CTAttributeEntity}>
	 */
	List<SW_CTAttributeEntity> findByCode(String code);
	/**
	 * Retrieves a list of attributes by their description.
	 * @param description the description
	 * @return {@link List}<{@link SW_CTAttributeEntity}>
	 */
	List<SW_CTAttributeEntity> findByDescription(String description);
	/**
	 * Retrieves a list of attributes by their name.
	 * @param name the name
	 * @return {@link List}<{@link SW_CTAttributeEntity}>
	 */
	List<SW_CTAttributeEntity> findByName(String name);
}
