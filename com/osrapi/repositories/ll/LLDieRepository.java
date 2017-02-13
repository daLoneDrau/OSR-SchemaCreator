package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLDieEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLDieRepository
extends CrudRepository<LLDieEntity, Long> {
	/**
	 * Retrieves a list of dies by their code.
	 * @param code the code
	 * @return {@link List}<{@link LLDieEntity}>
	 */
	List<LLDieEntity> findByCode(String code);
	/**
	 * Retrieves a list of dies by their value.
	 * @param value the value
	 * @return {@link List}<{@link LLDieEntity}>
	 */
	List<LLDieEntity> findByValue(Long value);
}
