package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLGroupEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLGroupRepository
extends CrudRepository<LLGroupEntity, Long> {
	/**
	 * Retrieves a list of groups by their name.
	 * @param name the name
	 * @return {@link List}<{@link LLGroupEntity}>
	 */
	List<LLGroupEntity> findByName(String name);
}
