package com.osrapi.repositories.tft;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.tft.TFTEquipmentSlotEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface TFTEquipmentSlotRepository
extends CrudRepository<TFTEquipmentSlotEntity, Long> {
	/**
	 * Retrieves a list of equipment slots by their code.
	 * @param code the code
	 * @return {@link List}<{@link TFTEquipmentSlotEntity}>
	 */
	List<TFTEquipmentSlotEntity> findByCode(String code);
	/**
	 * Retrieves a list of equipment slots by their value.
	 * @param value the value
	 * @return {@link List}<{@link TFTEquipmentSlotEntity}>
	 */
	List<TFTEquipmentSlotEntity> findByValue(Long value);
}
