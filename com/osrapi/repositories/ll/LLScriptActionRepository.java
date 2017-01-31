package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLScriptActionEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLScriptActionRepository
extends CrudRepository<LLScriptActionEntity, Long> {
	/**
	 * Retrieves a list of script actions by their name.
	 * @param name the name
	 * @return {@link List}<{@link LLScriptActionEntity}>
	 */
	List<LLScriptActionEntity> findByName(String name);
	/**
	 * Retrieves a list of script actions by their type.
	 * @param type the type
	 * @return {@link List}<{@link LLScriptActionEntity}>
	 */
	List<LLScriptActionEntity> findByType(String type);
}
