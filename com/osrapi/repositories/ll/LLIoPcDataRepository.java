package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLIoPcDataEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLIoPcDataRepository
extends CrudRepository<LLIoPcDataEntity, Long> {
	/**
	 * Retrieves a list of io pc datas by their bags.
	 * @param bags the bags
	 * @return {@link List}<{@link LLIoPcDataEntity}>
	 */
	List<LLIoPcDataEntity> findByBags(Long bags);
	/**
	 * Retrieves a list of io pc datas by their flags.
	 * @param flags the flags
	 * @return {@link List}<{@link LLIoPcDataEntity}>
	 */
	List<LLIoPcDataEntity> findByFlags(Long flags);
	/**
	 * Retrieves a list of io pc datas by their gold.
	 * @param gold the gold
	 * @return {@link List}<{@link LLIoPcDataEntity}>
	 */
	List<LLIoPcDataEntity> findByGold(Float gold);
	/**
	 * Retrieves a list of io pc datas by their interfaceFlags.
	 * @param interfaceFlags the interfaceFlags
	 * @return {@link List}<{@link LLIoPcDataEntity}>
	 */
	List<LLIoPcDataEntity> findByInterfaceFlags(Long interfaceFlags);
	/**
	 * Retrieves a list of io pc datas by their internalScript.
	 * @param internalScript the internalScript
	 * @return {@link List}<{@link LLIoPcDataEntity}>
	 */
	List<LLIoPcDataEntity> findByInternalScript(String internalScript);
	/**
	 * Retrieves a list of io pc datas by their level.
	 * @param level the level
	 * @return {@link List}<{@link LLIoPcDataEntity}>
	 */
	List<LLIoPcDataEntity> findByLevel(Long level);
	/**
	 * Retrieves a list of io pc datas by their module.
	 * @param module the module
	 * @return {@link List}<{@link LLIoPcDataEntity}>
	 */
	List<LLIoPcDataEntity> findByModule(String module);
	/**
	 * Retrieves a list of io pc datas by their name.
	 * @param name the name
	 * @return {@link List}<{@link LLIoPcDataEntity}>
	 */
	List<LLIoPcDataEntity> findByName(String name);
	/**
	 * Retrieves a list of io pc datas by their xp.
	 * @param xp the xp
	 * @return {@link List}<{@link LLIoPcDataEntity}>
	 */
	List<LLIoPcDataEntity> findByXp(Long xp);
}
