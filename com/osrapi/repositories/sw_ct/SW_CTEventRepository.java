package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTEventEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTEventRepository
extends CrudRepository<SW_CTEventEntity, Long> {
	/**
	 * Retrieves a list of events by their code.
	 * @param code the code
	 * @return {@link List}<{@link SW_CTEventEntity}>
	 */
	List<SW_CTEventEntity> findByCode(String code);
}
