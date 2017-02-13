package com.osrapi.models.ll;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.MapKeyColumn;
import javax.persistence.MapKeyJoinColumn;
import javax.persistence.MappedSuperclass;
import javax.persistence.OneToOne;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * @author drau
 */
@JsonInclude(JsonInclude.Include.NON_EMPTY)
@Entity
@Table(name = "io_pc_data", schema = "ll")
public final class LLIoPcDataEntity {
    /**
     * the primary key - an autogenerated id (unique for each user in the db).
     */
    @Id
    @Column(name = "io_pc_data_id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
  generator = "io_pc_data_seq")
    @SequenceGenerator(
        name = "io_pc_data_seq",
        sequenceName = "ll.io_pc_data_id_seq",
        allocationSize = 1
    )
    private Long                    id;
    /** Creates a new instance of {@link LLIoPcDataEntity}. */
    public LLIoPcDataEntity() {
        super();
    }
    /**
     * Gets the id.
     * @return {@link Long}
     */
    public Long getId() {
        return id;
    }
    /**
     * Sets the id.
     * @param val the new value
     */
    public void setId(final Long val) {
        id = val;
    }

    /** the xp. */
    @Column(name = "xp")
    @JsonProperty("xp")
    @NotNull
    private long                    xp;
    /**
     * Gets the xp.
     * @return {@link long}
     */
    public long getXp() {
        return xp;
    }
    /**
     * Sets the xp.
     * @param val the new value
     */
    public void setXp(final long val) {
        xp = val;
    }

    /** the name. */
    @Column(name = "name")
    @JsonProperty("name")
    @NotNull
    private String                    name;
    /**
     * Gets the name.
     * @return {@link String}
     */
    public String getName() {
        return name;
    }
    /**
     * Sets the name.
     * @param val the new value
     */
    public void setName(final String val) {
        name = val;
    }

    /** the module. */
    @Column(name = "module")
    @JsonProperty("module")
    
    private String                    module;
    /**
     * Gets the module.
     * @return {@link String}
     */
    public String getModule() {
        return module;
    }
    /**
     * Sets the module.
     * @param val the new value
     */
    public void setModule(final String val) {
        module = val;
    }

    /** the level. */
    @Column(name = "level")
    @JsonProperty("level")
    @NotNull
    private long                    level;
    /**
     * Gets the level.
     * @return {@link long}
     */
    public long getLevel() {
        return level;
    }
    /**
     * Sets the level.
     * @param val the new value
     */
    public void setLevel(final long val) {
        level = val;
    }

    /** the internalScript. */
    @Column(name = "internal_script")
    @JsonProperty("internal_script")
    
    private String                    internalScript;
    /**
     * Gets the internalScript.
     * @return {@link String}
     */
    public String getInternalScript() {
        return internalScript;
    }
    /**
     * Sets the internalScript.
     * @param val the new value
     */
    public void setInternalScript(final String val) {
        internalScript = val;
    }

    /** the interfaceFlags. */
    @Column(name = "interface_flags")
    @JsonProperty("interface_flags")
    
    private Long                    interfaceFlags;
    /**
     * Gets the interfaceFlags.
     * @return {@link Long}
     */
    public Long getInterfaceFlags() {
        return interfaceFlags;
    }
    /**
     * Sets the interfaceFlags.
     * @param val the new value
     */
    public void setInterfaceFlags(final Long val) {
        interfaceFlags = val;
    }

    /** the gold. */
    @Column(name = "gold")
    @JsonProperty("gold")
    @NotNull
    private float                    gold;
    /**
     * Gets the gold.
     * @return {@link float}
     */
    public float getGold() {
        return gold;
    }
    /**
     * Sets the gold.
     * @param val the new value
     */
    public void setGold(final float val) {
        gold = val;
    }

    /** the gender. */
    @ManyToOne(targetEntity = LLGenderEntity.class, fetch = FetchType.EAGER)
    @Fetch(FetchMode.SELECT)
    @JoinColumn(name = "gender")
    @JsonProperty("gender")
  @NotNull
    private LLGenderEntity    gender;
    /**
     * Gets the gender.
     * @return {@link LLGenderEntity}
     */
    public LLGenderEntity getGender() {
        return gender;
    }
    /**
     * Sets the gender.
     * @param val the new value
     */
    public void setGender(final LLGenderEntity val) {
        gender = val;
    }

    /** the flags. */
    @Column(name = "flags")
    @JsonProperty("flags")
    
    private Long                    flags;
    /**
     * Gets the flags.
     * @return {@link Long}
     */
    public Long getFlags() {
        return flags;
    }
    /**
     * Sets the flags.
     * @param val the new value
     */
    public void setFlags(final Long val) {
        flags = val;
    }

    /** the bags. */
    @Column(name = "bags")
    @JsonProperty("bags")
    @NotNull
    private long                    bags;
    /**
     * Gets the bags.
     * @return {@link long}
     */
    public long getBags() {
        return bags;
    }
    /**
     * Sets the bags.
     * @param val the new value
     */
    public void setBags(final long val) {
        bags = val;
    }

    /**
     * the list of keyring associated with this
     * {@link LLIoPcDataEntity}.
     */
    @Column
    @ElementCollection(targetClass = String.class)
    @CollectionTable(name = "io_pc_data_keyring_lookup", schema = "ll",
  joinColumns = { @JoinColumn(name = "io_pc_data_id") })
    @JsonProperty("keyring")
    private List<String>    keyring;
    /**
     * Gets the list of keyring.
     * @return {@link List}<{@link String}>
     */
    public List<String> getKeyring() {
        return keyring;
    }
    /**
     * Sets the list of keyring.
     * @param val the new value
     */
    public void setKeyring(final List<String> val) {
        keyring = val;
    }

    /**
     * the list of {@link LLGroupEntity}s associated with this
     * {@link LLIoPcDataEntity}.
     */
    @OneToMany(targetEntity = LLGroupEntity.class,
      fetch = FetchType.EAGER)
    @Fetch(FetchMode.SELECT)
    @JoinTable(name = "io_pc_data_groups_lookup", schema = "ll",
  joinColumns = @JoinColumn(name = "io_pc_data_id",
  referencedColumnName = "io_pc_data_id"),
  inverseJoinColumns = @JoinColumn(name = "group_id",
  referencedColumnName = "group_id"))
    @JsonProperty("groups")
    private List<LLGroupEntity>    groups;
    /**
     * Gets the list of groupss.
     * @return {@link List}<{@link LLGroupEntity}>
     */
    public List<LLGroupEntity> getGroups() {
        return groups;
    }
    /**
     * Sets the list of groupss.
     * @param val the new value
     */
    public void setGroups(final List<LLGroupEntity> val) {
        groups = val;
    }

    /**
     * the list of equippedItems associated with this
     * {@link LLIoPcDataEntity}.
     */
    @Column
    @ElementCollection(targetClass = Integer.class)
    @CollectionTable(name = "io_pc_data_equipped_items_lookup", schema = "ll",
  joinColumns = { @JoinColumn(name = "io_pc_data_id") })
    @JsonProperty("equipped_items")
    private List<Integer>    equippedItems;
    /**
     * Gets the list of equippedItems.
     * @return {@link List}<{@link Integer}>
     */
    public List<Integer> getEquippedItems() {
        return equippedItems;
    }
    /**
     * Sets the list of equippedItems.
     * @param val the new value
     */
    public void setEquippedItems(final List<Integer> val) {
        equippedItems = val;
    }

    @ElementCollection
    @CollectionTable(name = "io_pc_data_attributes_lookup",
  schema = "ll", joinColumns = @JoinColumn(name = "io_pc_data_id"))
    @MapKeyColumn(name = "key")
    @Column(name = "value")
    @JsonProperty("attributes")
    private Map<String, Integer> attributes;
    /**
     * Gets the map of attributes.
     * @return {@link Map}<{@link String}, {@link Integer}>
     */
    public Map<String, Integer> getAttributes() {
        return attributes;
    }
    /**
     * Sets the mapping for attributes.
     * @param val the new value
     */
    public void setAttributes(Map<String, Integer> val) {
        attributes = val;
    }

}

