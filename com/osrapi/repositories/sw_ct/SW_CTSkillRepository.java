package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTSkillEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTSkillRepository
extends CrudRepository<SW_CTSkillEntity, Long> {
	/**
	 * Retrieves a list of skills by their description.
	 * @param description the description
	 * @return {@link List}<{@link SW_CTSkillEntity}>
	 */
	List<SW_CTSkillEntity> findByDescription(String description);
	/**
	 * Retrieves a list of skills by their name.
	 * @param name the name
	 * @return {@link List}<{@link SW_CTSkillEntity}>
	 */
	List<SW_CTSkillEntity> findByName(String name);
}
