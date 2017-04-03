package com.osrapi.repositories.tft;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.tft.TFTGroupEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface TFTGroupRepository
extends CrudRepository<TFTGroupEntity, Long> {
	/**
	 * Retrieves a list of groups by their name.
	 * @param name the name
	 * @return {@link List}<{@link TFTGroupEntity}>
	 */
	List<TFTGroupEntity> findByName(String name);
}
