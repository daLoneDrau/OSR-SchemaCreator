package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLScriptBundleEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLScriptBundleRepository
extends CrudRepository<LLScriptBundleEntity, Long> {
	/**
	 * Retrieves a list of script bundles by their name.
	 * @param name the name
	 * @return {@link List}<{@link LLScriptBundleEntity}>
	 */
	List<LLScriptBundleEntity> findByName(String name);
}
