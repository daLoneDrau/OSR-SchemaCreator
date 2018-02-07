package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTObjectTypeEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTObjectTypeRepository
extends CrudRepository<SW_CTObjectTypeEntity, Long> {
	/**
	 * Retrieves a list of object types by their code.
	 * @param code the code
	 * @return {@link List}<{@link SW_CTObjectTypeEntity}>
	 */
	List<SW_CTObjectTypeEntity> findByCode(String code);
	/**
	 * Retrieves a list of object types by their flag.
	 * @param flag the flag
	 * @return {@link List}<{@link SW_CTObjectTypeEntity}>
	 */
	List<SW_CTObjectTypeEntity> findByFlag(Long flag);
}
