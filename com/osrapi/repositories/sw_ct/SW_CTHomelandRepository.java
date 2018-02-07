package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTHomelandEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTHomelandRepository
extends CrudRepository<SW_CTHomelandEntity, Long> {
	/**
	 * Retrieves a list of homelands by their description.
	 * @param description the description
	 * @return {@link List}<{@link SW_CTHomelandEntity}>
	 */
	List<SW_CTHomelandEntity> findByDescription(String description);
	/**
	 * Retrieves a list of homelands by their name.
	 * @param name the name
	 * @return {@link List}<{@link SW_CTHomelandEntity}>
	 */
	List<SW_CTHomelandEntity> findByName(String name);
}
