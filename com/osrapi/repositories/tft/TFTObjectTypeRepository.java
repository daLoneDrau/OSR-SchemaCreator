package com.osrapi.repositories.tft;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.tft.TFTObjectTypeEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface TFTObjectTypeRepository
extends CrudRepository<TFTObjectTypeEntity, Long> {
	/**
	 * Retrieves a list of object types by their code.
	 * @param code the code
	 * @return {@link List}<{@link TFTObjectTypeEntity}>
	 */
	List<TFTObjectTypeEntity> findByCode(String code);
	/**
	 * Retrieves a list of object types by their flag.
	 * @param flag the flag
	 * @return {@link List}<{@link TFTObjectTypeEntity}>
	 */
	List<TFTObjectTypeEntity> findByFlag(Long flag);
}
