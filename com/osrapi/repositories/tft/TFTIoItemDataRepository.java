package com.osrapi.repositories.tft;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.tft.TFTIoItemDataEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface TFTIoItemDataRepository
extends CrudRepository<TFTIoItemDataEntity, Long> {
	/**
	 * Retrieves a list of io item datas by their stRequirement.
	 * @param stRequirement the stRequirement
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByStRequirement(Long stRequirement);
	/**
	 * Retrieves a list of io item datas by their count.
	 * @param count the count
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByCount(Long count);
	/**
	 * Retrieves a list of io item datas by their description.
	 * @param description the description
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByDescription(String description);
	/**
	 * Retrieves a list of io item datas by their foodValue.
	 * @param foodValue the foodValue
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByFoodValue(Long foodValue);
	/**
	 * Retrieves a list of io item datas by their internalScript.
	 * @param internalScript the internalScript
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByInternalScript(String internalScript);
	/**
	 * Retrieves a list of io item datas by their leftRing.
	 * @param leftRing the leftRing
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByLeftRing(Boolean leftRing);
	/**
	 * Retrieves a list of io item datas by their lightValue.
	 * @param lightValue the lightValue
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByLightValue(Long lightValue);
	/**
	 * Retrieves a list of io item datas by their maxOwned.
	 * @param maxOwned the maxOwned
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByMaxOwned(Long maxOwned);
	/**
	 * Retrieves a list of io item datas by their name.
	 * @param name the name
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByName(String name);
	/**
	 * Retrieves a list of io item datas by their price.
	 * @param price the price
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByPrice(Float price);
	/**
	 * Retrieves a list of io item datas by their ringType.
	 * @param ringType the ringType
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByRingType(Long ringType);
	/**
	 * Retrieves a list of io item datas by their stackSize.
	 * @param stackSize the stackSize
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByStackSize(Long stackSize);
	/**
	 * Retrieves a list of io item datas by their stealValue.
	 * @param stealValue the stealValue
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByStealValue(Long stealValue);
	/**
	 * Retrieves a list of io item datas by their title.
	 * @param title the title
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByTitle(String title);
	/**
	 * Retrieves a list of io item datas by their weight.
	 * @param weight the weight
	 * @return {@link List}<{@link TFTIoItemDataEntity}>
	 */
	List<TFTIoItemDataEntity> findByWeight(Float weight);
}
