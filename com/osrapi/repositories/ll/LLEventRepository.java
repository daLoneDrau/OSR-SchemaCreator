package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLEventEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLEventRepository
extends CrudRepository<LLEventEntity, Long> {
	/**
	 * Retrieves a list of events by their code.
	 * @param code the code
	 * @return {@link List}<{@link LLEventEntity}>
	 */
	List<LLEventEntity> findByCode(String code);
}
