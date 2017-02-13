package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLDiceEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLDiceRepository
extends CrudRepository<LLDiceEntity, Long> {
	/**
	 * Retrieves a list of dices by their code.
	 * @param code the code
	 * @return {@link List}<{@link LLDiceEntity}>
	 */
	List<LLDiceEntity> findByCode(String code);
	/**
	 * Retrieves a list of dices by their number.
	 * @param number the number
	 * @return {@link List}<{@link LLDiceEntity}>
	 */
	List<LLDiceEntity> findByNumber(Long number);
	/**
	 * Retrieves a list of dices by their plus.
	 * @param plus the plus
	 * @return {@link List}<{@link LLDiceEntity}>
	 */
	List<LLDiceEntity> findByPlus(Long plus);
}
