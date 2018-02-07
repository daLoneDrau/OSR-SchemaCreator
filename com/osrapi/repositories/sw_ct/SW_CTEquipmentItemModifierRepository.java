package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTEquipmentItemModifierEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTEquipmentItemModifierRepository
extends CrudRepository<SW_CTEquipmentItemModifierEntity, Long> {
	/**
	 * Retrieves a list of equipment item modifiers by their code.
	 * @param code the code
	 * @return {@link List}<{@link SW_CTEquipmentItemModifierEntity}>
	 */
	List<SW_CTEquipmentItemModifierEntity> findByCode(String code);
	/**
	 * Retrieves a list of equipment item modifiers by their percent.
	 * @param percent the percent
	 * @return {@link List}<{@link SW_CTEquipmentItemModifierEntity}>
	 */
	List<SW_CTEquipmentItemModifierEntity> findByPercent(Boolean percent);
	/**
	 * Retrieves a list of equipment item modifiers by their special.
	 * @param special the special
	 * @return {@link List}<{@link SW_CTEquipmentItemModifierEntity}>
	 */
	List<SW_CTEquipmentItemModifierEntity> findBySpecial(Long special);
	/**
	 * Retrieves a list of equipment item modifiers by their value.
	 * @param value the value
	 * @return {@link List}<{@link SW_CTEquipmentItemModifierEntity}>
	 */
	List<SW_CTEquipmentItemModifierEntity> findByValue(Float value);
}
