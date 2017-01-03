package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLScriptActionTypeEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLScriptActionTypeRepository
extends CrudRepository<LLScriptActionTypeEntity, Long> {
	/**
	 * Retrieves a list of script action types by their code.
	 * @param code the code
	 * @return {@link List}<{@link LLScriptActionTypeEntity}>
	 */
	List<LLScriptActionTypeEntity> findByCode(String code);
}
