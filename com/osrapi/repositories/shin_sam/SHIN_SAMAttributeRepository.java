package com.osrapi.repositories.shin_sam;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.shin_sam.SHIN_SAMAttributeEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SHIN_SAMAttributeRepository
extends CrudRepository<SHIN_SAMAttributeEntity, Long> {
	/**
	 * Retrieves a list of attributes by their code.
	 * @param code the code
	 * @return {@link List}<{@link SHIN_SAMAttributeEntity}>
	 */
	List<SHIN_SAMAttributeEntity> findByCode(String code);
	/**
	 * Retrieves a list of attributes by their description.
	 * @param description the description
	 * @return {@link List}<{@link SHIN_SAMAttributeEntity}>
	 */
	List<SHIN_SAMAttributeEntity> findByDescription(String description);
	/**
	 * Retrieves a list of attributes by their name.
	 * @param name the name
	 * @return {@link List}<{@link SHIN_SAMAttributeEntity}>
	 */
	List<SHIN_SAMAttributeEntity> findByName(String name);
}
