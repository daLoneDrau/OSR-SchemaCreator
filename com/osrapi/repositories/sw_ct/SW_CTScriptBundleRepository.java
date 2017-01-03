package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTScriptBundleEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTScriptBundleRepository
extends CrudRepository<SW_CTScriptBundleEntity, Long> {
	/**
	 * Retrieves a list of script bundles by their name.
	 * @param name the name
	 * @return {@link List}<{@link SW_CTScriptBundleEntity}>
	 */
	List<SW_CTScriptBundleEntity> findByName(String name);
}
