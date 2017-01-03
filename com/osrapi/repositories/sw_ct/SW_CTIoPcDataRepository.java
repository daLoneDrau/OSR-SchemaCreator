package com.osrapi.repositories.sw_ct;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.sw_ct.SW_CTIoPcDataEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface SW_CTIoPcDataRepository
extends CrudRepository<SW_CTIoPcDataEntity, Long> {
	/**
	 * Retrieves a list of io pc datas by their bags.
	 * @param bags the bags
	 * @return {@link List}<{@link SW_CTIoPcDataEntity}>
	 */
	List<SW_CTIoPcDataEntity> findByBags(Long bags);
	/**
	 * Retrieves a list of io pc datas by their flags.
	 * @param flags the flags
	 * @return {@link List}<{@link SW_CTIoPcDataEntity}>
	 */
	List<SW_CTIoPcDataEntity> findByFlags(Long flags);
	/**
	 * Retrieves a list of io pc datas by their gold.
	 * @param gold the gold
	 * @return {@link List}<{@link SW_CTIoPcDataEntity}>
	 */
	List<SW_CTIoPcDataEntity> findByGold(Float gold);
	/**
	 * Retrieves a list of io pc datas by their interfaceFlags.
	 * @param interfaceFlags the interfaceFlags
	 * @return {@link List}<{@link SW_CTIoPcDataEntity}>
	 */
	List<SW_CTIoPcDataEntity> findByInterfaceFlags(Long interfaceFlags);
	/**
	 * Retrieves a list of io pc datas by their internalScript.
	 * @param internalScript the internalScript
	 * @return {@link List}<{@link SW_CTIoPcDataEntity}>
	 */
	List<SW_CTIoPcDataEntity> findByInternalScript(String internalScript);
	/**
	 * Retrieves a list of io pc datas by their level.
	 * @param level the level
	 * @return {@link List}<{@link SW_CTIoPcDataEntity}>
	 */
	List<SW_CTIoPcDataEntity> findByLevel(Long level);
	/**
	 * Retrieves a list of io pc datas by their xp.
	 * @param xp the xp
	 * @return {@link List}<{@link SW_CTIoPcDataEntity}>
	 */
	List<SW_CTIoPcDataEntity> findByXp(Long xp);
}
