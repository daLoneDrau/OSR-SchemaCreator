package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLObjectTypeEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLObjectTypeRepository
extends CrudRepository<LLObjectTypeEntity, Long> {
	/**
	 * Retrieves a list of object types by their code.
	 * @param code the code
	 * @return {@link List}<{@link LLObjectTypeEntity}>
	 */
	List<LLObjectTypeEntity> findByCode(String code);
	/**
	 * Retrieves a list of object types by their flag.
	 * @param flag the flag
	 * @return {@link List}<{@link LLObjectTypeEntity}>
	 */
	List<LLObjectTypeEntity> findByFlag(Long flag);
}
