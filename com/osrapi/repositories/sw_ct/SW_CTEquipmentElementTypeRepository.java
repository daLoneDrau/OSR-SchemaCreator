package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTEquipmentElementTypeEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTEquipmentElementTypeRepository
extends CrudRepository<SW_CTEquipmentElementTypeEntity, Long> {
	/**
	 * Retrieves a list of equipment element types by their code.
	 * @param code the code
	 * @return {@link List}<{@link SW_CTEquipmentElementTypeEntity}>
	 */
	List<SW_CTEquipmentElementTypeEntity> findByCode(String code);
	/**
	 * Retrieves a list of equipment element types by their value.
	 * @param value the value
	 * @return {@link List}<{@link SW_CTEquipmentElementTypeEntity}>
	 */
	List<SW_CTEquipmentElementTypeEntity> findByValue(Long value);
}
