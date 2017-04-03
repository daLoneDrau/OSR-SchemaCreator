package com.osrapi.repositories.tft;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.tft.TFTDieEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface TFTDieRepository
extends CrudRepository<TFTDieEntity, Long> {
	/**
	 * Retrieves a list of dies by their code.
	 * @param code the code
	 * @return {@link List}<{@link TFTDieEntity}>
	 */
	List<TFTDieEntity> findByCode(String code);
	/**
	 * Retrieves a list of dies by their value.
	 * @param value the value
	 * @return {@link List}<{@link TFTDieEntity}>
	 */
	List<TFTDieEntity> findByValue(Long value);
}
