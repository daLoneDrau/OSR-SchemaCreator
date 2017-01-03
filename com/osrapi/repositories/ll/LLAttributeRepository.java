package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLAttributeEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLAttributeRepository
extends CrudRepository<LLAttributeEntity, Long> {
	/**
	 * Retrieves a list of attributes by their code.
	 * @param code the code
	 * @return {@link List}<{@link LLAttributeEntity}>
	 */
	List<LLAttributeEntity> findByCode(String code);
	/**
	 * Retrieves a list of attributes by their description.
	 * @param description the description
	 * @return {@link List}<{@link LLAttributeEntity}>
	 */
	List<LLAttributeEntity> findByDescription(String description);
	/**
	 * Retrieves a list of attributes by their name.
	 * @param name the name
	 * @return {@link List}<{@link LLAttributeEntity}>
	 */
	List<LLAttributeEntity> findByName(String name);
}
