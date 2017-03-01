package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLIoItemDataEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLIoItemDataRepository
extends CrudRepository<LLIoItemDataEntity, Long> {
	/**
	 * Retrieves a list of io item datas by their count.
	 * @param count the count
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByCount(Long count);
	/**
	 * Retrieves a list of io item datas by their description.
	 * @param description the description
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByDescription(String description);
	/**
	 * Retrieves a list of io item datas by their foodValue.
	 * @param foodValue the foodValue
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByFoodValue(Long foodValue);
	/**
	 * Retrieves a list of io item datas by their internalScript.
	 * @param internalScript the internalScript
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByInternalScript(String internalScript);
	/**
	 * Retrieves a list of io item datas by their leftRing.
	 * @param leftRing the leftRing
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByLeftRing(Boolean leftRing);
	/**
	 * Retrieves a list of io item datas by their lightValue.
	 * @param lightValue the lightValue
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByLightValue(Long lightValue);
	/**
	 * Retrieves a list of io item datas by their maxOwned.
	 * @param maxOwned the maxOwned
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByMaxOwned(Long maxOwned);
	/**
	 * Retrieves a list of io item datas by their name.
	 * @param name the name
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByName(String name);
	/**
	 * Retrieves a list of io item datas by their price.
	 * @param price the price
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByPrice(Float price);
	/**
	 * Retrieves a list of io item datas by their ringType.
	 * @param ringType the ringType
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByRingType(Long ringType);
	/**
	 * Retrieves a list of io item datas by their stackSize.
	 * @param stackSize the stackSize
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByStackSize(Long stackSize);
	/**
	 * Retrieves a list of io item datas by their stealValue.
	 * @param stealValue the stealValue
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByStealValue(Long stealValue);
	/**
	 * Retrieves a list of io item datas by their title.
	 * @param title the title
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByTitle(String title);
	/**
	 * Retrieves a list of io item datas by their weight.
	 * @param weight the weight
	 * @return {@link List}<{@link LLIoItemDataEntity}>
	 */
	List<LLIoItemDataEntity> findByWeight(Float weight);
}
