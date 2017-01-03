package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTGroupEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTGroupRepository
extends CrudRepository<SW_CTGroupEntity, Long> {
	/**
	 * Retrieves a list of groups by their name.
	 * @param name the name
	 * @return {@link List}<{@link SW_CTGroupEntity}>
	 */
	List<SW_CTGroupEntity> findByName(String name);
}
