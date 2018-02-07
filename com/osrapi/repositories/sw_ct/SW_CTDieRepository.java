package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTDieEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTDieRepository
extends CrudRepository<SW_CTDieEntity, Long> {
	/**
	 * Retrieves a list of dies by their code.
	 * @param code the code
	 * @return {@link List}<{@link SW_CTDieEntity}>
	 */
	List<SW_CTDieEntity> findByCode(String code);
	/**
	 * Retrieves a list of dies by their value.
	 * @param value the value
	 * @return {@link List}<{@link SW_CTDieEntity}>
	 */
	List<SW_CTDieEntity> findByValue(Long value);
}
