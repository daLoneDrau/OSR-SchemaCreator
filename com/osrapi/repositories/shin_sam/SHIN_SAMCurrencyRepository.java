package com.osrapi.repositories.shin_sam;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.shin_sam.SHIN_SAMCurrencyEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SHIN_SAMCurrencyRepository
extends CrudRepository<SHIN_SAMCurrencyEntity, Long> {
	/**
	 * Retrieves a list of currencys by their name.
	 * @param name the name
	 * @return {@link List}<{@link SHIN_SAMCurrencyEntity}>
	 */
	List<SHIN_SAMCurrencyEntity> findByName(String name);
	/**
	 * Retrieves a list of currencys by their sortOrder.
	 * @param sortOrder the sortOrder
	 * @return {@link List}<{@link SHIN_SAMCurrencyEntity}>
	 */
	List<SHIN_SAMCurrencyEntity> findBySortOrder(Long sortOrder);
}
