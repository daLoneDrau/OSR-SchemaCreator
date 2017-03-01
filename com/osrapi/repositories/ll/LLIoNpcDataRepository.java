package com.osrapi.repositories.ll;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.osrapi.models.ll.LLIoNpcDataEntity;

/**
 *
 * @author drau
 *
 */
@Repository
public interface LLIoNpcDataRepository
extends CrudRepository<LLIoNpcDataEntity, Long> {
	/**
	 * Retrieves a list of io npc datas by their attacksPerRound.
	 * @param attacksPerRound the attacksPerRound
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByAttacksPerRound(Long attacksPerRound);
	/**
	 * Retrieves a list of io npc datas by their behavior.
	 * @param behavior the behavior
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByBehavior(Long behavior);
	/**
	 * Retrieves a list of io npc datas by their behaviorParam.
	 * @param behaviorParam the behaviorParam
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByBehaviorParam(Float behaviorParam);
	/**
	 * Retrieves a list of io npc datas by their climbCount.
	 * @param climbCount the climbCount
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByClimbCount(Float climbCount);
	/**
	 * Retrieves a list of io npc datas by their collidState.
	 * @param collidState the collidState
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByCollidState(Long collidState);
	/**
	 * Retrieves a list of io npc datas by their collidTime.
	 * @param collidTime the collidTime
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByCollidTime(Long collidTime);
	/**
	 * Retrieves a list of io npc datas by their critical.
	 * @param critical the critical
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByCritical(Float critical);
	/**
	 * Retrieves a list of io npc datas by their cut.
	 * @param cut the cut
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByCut(Boolean cut);
	/**
	 * Retrieves a list of io npc datas by their cuts.
	 * @param cuts the cuts
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByCuts(Long cuts);
	/**
	 * Retrieves a list of io npc datas by their description.
	 * @param description the description
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByDescription(String description);
	/**
	 * Retrieves a list of io npc datas by their hoardClass.
	 * @param hoardClass the hoardClass
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByHoardClass(Long hoardClass);
	/**
	 * Retrieves a list of io npc datas by their icon.
	 * @param icon the icon
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByIcon(String icon);
	/**
	 * Retrieves a list of io npc datas by their internalScript.
	 * @param internalScript the internalScript
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByInternalScript(String internalScript);
	/**
	 * Retrieves a list of io npc datas by their level.
	 * @param level the level
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByLevel(Long level);
	/**
	 * Retrieves a list of io npc datas by their life.
	 * @param life the life
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByLife(Float life);
	/**
	 * Retrieves a list of io npc datas by their mana.
	 * @param mana the mana
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByMana(Float mana);
	/**
	 * Retrieves a list of io npc datas by their maxlife.
	 * @param maxlife the maxlife
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByMaxlife(Float maxlife);
	/**
	 * Retrieves a list of io npc datas by their maxmana.
	 * @param maxmana the maxmana
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByMaxmana(Float maxmana);
	/**
	 * Retrieves a list of io npc datas by their module.
	 * @param module the module
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByModule(String module);
	/**
	 * Retrieves a list of io npc datas by their morale.
	 * @param morale the morale
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByMorale(Long morale);
	/**
	 * Retrieves a list of io npc datas by their movePerRound.
	 * @param movePerRound the movePerRound
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByMovePerRound(Long movePerRound);
	/**
	 * Retrieves a list of io npc datas by their movePerTurn.
	 * @param movePerTurn the movePerTurn
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByMovePerTurn(Long movePerTurn);
	/**
	 * Retrieves a list of io npc datas by their name.
	 * @param name the name
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByName(String name);
	/**
	 * Retrieves a list of io npc datas by their npcFlags.
	 * @param npcFlags the npcFlags
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByNpcFlags(Long npcFlags);
	/**
	 * Retrieves a list of io npc datas by their savingThrow.
	 * @param savingThrow the savingThrow
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findBySavingThrow(String savingThrow);
	/**
	 * Retrieves a list of io npc datas by their title.
	 * @param title the title
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByTitle(String title);
	/**
	 * Retrieves a list of io npc datas by their weapon.
	 * @param weapon the weapon
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByWeapon(String weapon);
	/**
	 * Retrieves a list of io npc datas by their xpvalue.
	 * @param xpvalue the xpvalue
	 * @return {@link List}<{@link LLIoNpcDataEntity}>
	 */
	List<LLIoNpcDataEntity> findByXpvalue(Long xpvalue);
}
