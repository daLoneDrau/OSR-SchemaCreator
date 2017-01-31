package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLEquipmentItemModifierEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLEquipmentItemModifierRepository
extends CrudRepository<LLEquipmentItemModifierEntity, Long> {
	/**
	 * Retrieves a list of equipment item modifiers by their code.
	 * @param code the code
	 * @return {@link List}<{@link LLEquipmentItemModifierEntity}>
	 */
	List<LLEquipmentItemModifierEntity> findByCode(String code);
	/**
	 * Retrieves a list of equipment item modifiers by their percent.
	 * @param percent the percent
	 * @return {@link List}<{@link LLEquipmentItemModifierEntity}>
	 */
	List<LLEquipmentItemModifierEntity> findByPercent(Boolean percent);
	/**
	 * Retrieves a list of equipment item modifiers by their special.
	 * @param special the special
	 * @return {@link List}<{@link LLEquipmentItemModifierEntity}>
	 */
	List<LLEquipmentItemModifierEntity> findBySpecial(Long special);
	/**
	 * Retrieves a list of equipment item modifiers by their value.
	 * @param value the value
	 * @return {@link List}<{@link LLEquipmentItemModifierEntity}>
	 */
	List<LLEquipmentItemModifierEntity> findByValue(Float value);
}
