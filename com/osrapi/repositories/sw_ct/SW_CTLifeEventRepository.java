package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTLifeEventEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTLifeEventRepository
extends CrudRepository<SW_CTLifeEventEntity, Long> {
	/**
	 * Retrieves a list of life events by their description.
	 * @param description the description
	 * @return {@link List}<{@link SW_CTLifeEventEntity}>
	 */
	List<SW_CTLifeEventEntity> findByDescription(String description);
	/**
	 * Retrieves a list of life events by their name.
	 * @param name the name
	 * @return {@link List}<{@link SW_CTLifeEventEntity}>
	 */
	List<SW_CTLifeEventEntity> findByName(String name);
}
