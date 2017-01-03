package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTDiceEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTDiceRepository
extends CrudRepository<SW_CTDiceEntity, Long> {
	/**
	 * Retrieves a list of dices by their code.
	 * @param code the code
	 * @return {@link List}<{@link SW_CTDiceEntity}>
	 */
	List<SW_CTDiceEntity> findByCode(String code);
	/**
	 * Retrieves a list of dices by their number.
	 * @param number the number
	 * @return {@link List}<{@link SW_CTDiceEntity}>
	 */
	List<SW_CTDiceEntity> findByNumber(Long number);
	/**
	 * Retrieves a list of dices by their plus.
	 * @param plus the plus
	 * @return {@link List}<{@link SW_CTDiceEntity}>
	 */
	List<SW_CTDiceEntity> findByPlus(Long plus);
}
