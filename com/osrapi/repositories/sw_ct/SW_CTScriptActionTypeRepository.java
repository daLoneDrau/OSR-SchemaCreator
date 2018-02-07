package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTScriptActionTypeEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTScriptActionTypeRepository
extends CrudRepository<SW_CTScriptActionTypeEntity, Long> {
	/**
	 * Retrieves a list of script action types by their code.
	 * @param code the code
	 * @return {@link List}<{@link SW_CTScriptActionTypeEntity}>
	 */
	List<SW_CTScriptActionTypeEntity> findByCode(String code);
}
