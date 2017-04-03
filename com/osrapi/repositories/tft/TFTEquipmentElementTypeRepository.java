package com.osrapi.repositories.tft;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.tft.TFTEquipmentElementTypeEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface TFTEquipmentElementTypeRepository
extends CrudRepository<TFTEquipmentElementTypeEntity, Long> {
	/**
	 * Retrieves a list of equipment element types by their code.
	 * @param code the code
	 * @return {@link List}<{@link TFTEquipmentElementTypeEntity}>
	 */
	List<TFTEquipmentElementTypeEntity> findByCode(String code);
	/**
	 * Retrieves a list of equipment element types by their value.
	 * @param value the value
	 * @return {@link List}<{@link TFTEquipmentElementTypeEntity}>
	 */
	List<TFTEquipmentElementTypeEntity> findByValue(Long value);
}
