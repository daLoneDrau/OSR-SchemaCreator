package com.osrapi.repositories.tft;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.tft.TFTEquipmentItemModifierEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface TFTEquipmentItemModifierRepository
extends CrudRepository<TFTEquipmentItemModifierEntity, Long> {
	/**
	 * Retrieves a list of equipment item modifiers by their code.
	 * @param code the code
	 * @return {@link List}<{@link TFTEquipmentItemModifierEntity}>
	 */
	List<TFTEquipmentItemModifierEntity> findByCode(String code);
	/**
	 * Retrieves a list of equipment item modifiers by their percent.
	 * @param percent the percent
	 * @return {@link List}<{@link TFTEquipmentItemModifierEntity}>
	 */
	List<TFTEquipmentItemModifierEntity> findByPercent(Boolean percent);
	/**
	 * Retrieves a list of equipment item modifiers by their special.
	 * @param special the special
	 * @return {@link List}<{@link TFTEquipmentItemModifierEntity}>
	 */
	List<TFTEquipmentItemModifierEntity> findBySpecial(Long special);
	/**
	 * Retrieves a list of equipment item modifiers by their value.
	 * @param value the value
	 * @return {@link List}<{@link TFTEquipmentItemModifierEntity}>
	 */
	List<TFTEquipmentItemModifierEntity> findByValue(Float value);
}
