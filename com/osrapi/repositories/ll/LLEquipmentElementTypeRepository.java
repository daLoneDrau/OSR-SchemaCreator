package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLEquipmentElementTypeEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLEquipmentElementTypeRepository
extends CrudRepository<LLEquipmentElementTypeEntity, Long> {
	/**
	 * Retrieves a list of equipment element types by their code.
	 * @param code the code
	 * @return {@link List}<{@link LLEquipmentElementTypeEntity}>
	 */
	List<LLEquipmentElementTypeEntity> findByCode(String code);
	/**
	 * Retrieves a list of equipment element types by their value.
	 * @param value the value
	 * @return {@link List}<{@link LLEquipmentElementTypeEntity}>
	 */
	List<LLEquipmentElementTypeEntity> findByValue(Long value);
}
