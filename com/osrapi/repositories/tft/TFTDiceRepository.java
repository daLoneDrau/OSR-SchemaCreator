package com.osrapi.repositories.tft;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.tft.TFTDiceEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface TFTDiceRepository
extends CrudRepository<TFTDiceEntity, Long> {
	/**
	 * Retrieves a list of dices by their code.
	 * @param code the code
	 * @return {@link List}<{@link TFTDiceEntity}>
	 */
	List<TFTDiceEntity> findByCode(String code);
	/**
	 * Retrieves a list of dices by their number.
	 * @param number the number
	 * @return {@link List}<{@link TFTDiceEntity}>
	 */
	List<TFTDiceEntity> findByNumber(Long number);
	/**
	 * Retrieves a list of dices by their plus.
	 * @param plus the plus
	 * @return {@link List}<{@link TFTDiceEntity}>
	 */
	List<TFTDiceEntity> findByPlus(Long plus);
}
