package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTBackgroundEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTBackgroundRepository
extends CrudRepository<SW_CTBackgroundEntity, Long> {
	/**
	 * Retrieves a list of backgrounds by their description.
	 * @param description the description
	 * @return {@link List}<{@link SW_CTBackgroundEntity}>
	 */
	List<SW_CTBackgroundEntity> findByDescription(String description);
	/**
	 * Retrieves a list of backgrounds by their homeland.
	 * @param homeland the homeland
	 * @return {@link List}<{@link SW_CTBackgroundEntity}>
	 */
	List<SW_CTBackgroundEntity> findByHomeland(String homeland);
	/**
	 * Retrieves a list of backgrounds by their name.
	 * @param name the name
	 * @return {@link List}<{@link SW_CTBackgroundEntity}>
	 */
	List<SW_CTBackgroundEntity> findByName(String name);
}
