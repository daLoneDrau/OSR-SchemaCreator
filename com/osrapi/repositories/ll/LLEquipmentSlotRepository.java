package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLEquipmentSlotEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLEquipmentSlotRepository
extends CrudRepository<LLEquipmentSlotEntity, Long> {
	/**
	 * Retrieves a list of equipment slots by their code.
	 * @param code the code
	 * @return {@link List}<{@link LLEquipmentSlotEntity}>
	 */
	List<LLEquipmentSlotEntity> findByCode(String code);
	/**
	 * Retrieves a list of equipment slots by their value.
	 * @param value the value
	 * @return {@link List}<{@link LLEquipmentSlotEntity}>
	 */
	List<LLEquipmentSlotEntity> findByValue(Long value);
}
