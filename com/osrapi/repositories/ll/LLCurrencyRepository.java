package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLCurrencyEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLCurrencyRepository
extends CrudRepository<LLCurrencyEntity, Long> {
	/**
	 * Retrieves a list of currencys by their code.
	 * @param code the code
	 * @return {@link List}<{@link LLCurrencyEntity}>
	 */
	List<LLCurrencyEntity> findByCode(String code);
	/**
	 * Retrieves a list of currencys by their name.
	 * @param name the name
	 * @return {@link List}<{@link LLCurrencyEntity}>
	 */
	List<LLCurrencyEntity> findByName(String name);
	/**
	 * Retrieves a list of currencys by their sortOrder.
	 * @param sortOrder the sortOrder
	 * @return {@link List}<{@link LLCurrencyEntity}>
	 */
	List<LLCurrencyEntity> findBySortOrder(Long sortOrder);
}
