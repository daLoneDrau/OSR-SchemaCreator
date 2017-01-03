package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTScriptActionEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTScriptActionRepository
extends CrudRepository<SW_CTScriptActionEntity, Long> {
	/**
	 * Retrieves a list of script actions by their name.
	 * @param name the name
	 * @return {@link List}<{@link SW_CTScriptActionEntity}>
	 */
	List<SW_CTScriptActionEntity> findByName(String name);
	/**
	 * Retrieves a list of script actions by their type.
	 * @param type the type
	 * @return {@link List}<{@link SW_CTScriptActionEntity}>
	 */
	List<SW_CTScriptActionEntity> findByType(String type);
}
