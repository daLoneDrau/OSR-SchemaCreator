package com.osrapi.repositories.tft;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.tft.TFTIoPcDataEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface TFTIoPcDataRepository
extends CrudRepository<TFTIoPcDataEntity, Long> {
	/**
	 * Retrieves a list of io pc datas by their bags.
	 * @param bags the bags
	 * @return {@link List}<{@link TFTIoPcDataEntity}>
	 */
	List<TFTIoPcDataEntity> findByBags(Long bags);
	/**
	 * Retrieves a list of io pc datas by their flags.
	 * @param flags the flags
	 * @return {@link List}<{@link TFTIoPcDataEntity}>
	 */
	List<TFTIoPcDataEntity> findByFlags(Long flags);
	/**
	 * Retrieves a list of io pc datas by their gold.
	 * @param gold the gold
	 * @return {@link List}<{@link TFTIoPcDataEntity}>
	 */
	List<TFTIoPcDataEntity> findByGold(Float gold);
	/**
	 * Retrieves a list of io pc datas by their interfaceFlags.
	 * @param interfaceFlags the interfaceFlags
	 * @return {@link List}<{@link TFTIoPcDataEntity}>
	 */
	List<TFTIoPcDataEntity> findByInterfaceFlags(Long interfaceFlags);
	/**
	 * Retrieves a list of io pc datas by their internalScript.
	 * @param internalScript the internalScript
	 * @return {@link List}<{@link TFTIoPcDataEntity}>
	 */
	List<TFTIoPcDataEntity> findByInternalScript(String internalScript);
	/**
	 * Retrieves a list of io pc datas by their level.
	 * @param level the level
	 * @return {@link List}<{@link TFTIoPcDataEntity}>
	 */
	List<TFTIoPcDataEntity> findByLevel(Long level);
	/**
	 * Retrieves a list of io pc datas by their name.
	 * @param name the name
	 * @return {@link List}<{@link TFTIoPcDataEntity}>
	 */
	List<TFTIoPcDataEntity> findByName(String name);
	/**
	 * Retrieves a list of io pc datas by their xp.
	 * @param xp the xp
	 * @return {@link List}<{@link TFTIoPcDataEntity}>
	 */
	List<TFTIoPcDataEntity> findByXp(Long xp);
}
