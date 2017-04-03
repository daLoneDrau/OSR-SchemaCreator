package com.osrapi.repositories.tft;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.tft.TFTAttributeEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface TFTAttributeRepository
extends CrudRepository<TFTAttributeEntity, Long> {
	/**
	 * Retrieves a list of attributes by their code.
	 * @param code the code
	 * @return {@link List}<{@link TFTAttributeEntity}>
	 */
	List<TFTAttributeEntity> findByCode(String code);
	/**
	 * Retrieves a list of attributes by their description.
	 * @param description the description
	 * @return {@link List}<{@link TFTAttributeEntity}>
	 */
	List<TFTAttributeEntity> findByDescription(String description);
	/**
	 * Retrieves a list of attributes by their name.
	 * @param name the name
	 * @return {@link List}<{@link TFTAttributeEntity}>
	 */
	List<TFTAttributeEntity> findByName(String name);
}
