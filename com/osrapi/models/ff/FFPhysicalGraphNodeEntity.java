package com.osrapi.models.ff;

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
@Table(name = "physical_graph_node", schema = "ff")
public final class FFPhysicalGraphNodeEntity {
    /**
     * the primary key - an autogenerated id (unique for each user in the db).
     */
    @Id
    @Column(name = "physical_graph_node_id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
  generator = "physical_graph_node_seq")
    @SequenceGenerator(
        name = "physical_graph_node_seq",
        sequenceName = "ff.physical_graph_node_id_seq",
        allocationSize = 1
    )
    private Long                    id;
    /** Creates a new instance of {@link FFPhysicalGraphNodeEntity}. */
    public FFPhysicalGraphNodeEntity() {
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

    /** the y. */
    @Column(name = "y")
    @JsonProperty("y")
    @NotNull
    private long                    y;
    /**
     * Gets the y.
     * @return {@link long}
     */
    public long getY() {
        return y;
    }
    /**
     * Sets the y.
     * @param val the new value
     */
    public void setY(final long val) {
        y = val;
    }

    /** the x. */
    @Column(name = "x")
    @JsonProperty("x")
    @NotNull
    private long                    x;
    /**
     * Gets the x.
     * @return {@link long}
     */
    public long getX() {
        return x;
    }
    /**
     * Sets the x.
     * @param val the new value
     */
    public void setX(final long val) {
        x = val;
    }

    /** the terrain. */
    @ManyToOne(targetEntity = FFTerrainEntity.class, fetch = FetchType.EAGER)
    @Fetch(FetchMode.SELECT)
    @JoinColumn(name = "terrain")
    @JsonProperty("terrain")
  @NotNull
    private FFTerrainEntity    terrain;
    /**
     * Gets the terrain.
     * @return {@link FFTerrainEntity}
     */
    public FFTerrainEntity getTerrain() {
        return terrain;
    }
    /**
     * Sets the terrain.
     * @param val the new value
     */
    public void setTerrain(final FFTerrainEntity val) {
        terrain = val;
    }

    /** the roomNumber. */
    @Column(name = "room_number")
    @JsonProperty("room_number")
    @NotNull
    private long                    roomNumber;
    /**
     * Gets the roomNumber.
     * @return {@link long}
     */
    public long getRoomNumber() {
        return roomNumber;
    }
    /**
     * Sets the roomNumber.
     * @param val the new value
     */
    public void setRoomNumber(final long val) {
        roomNumber = val;
    }

    /** the isMainNode. */
    @Column(name = "is_main_node")
    @JsonProperty("is_main_node")
    
    private Boolean                    isMainNode;
    /**
     * Gets the isMainNode.
     * @return {@link Boolean}
     */
    public Boolean getIsMainNode() {
        return isMainNode;
    }
    /**
     * Sets the isMainNode.
     * @param val the new value
     */
    public void setIsMainNode(final Boolean val) {
        isMainNode = val;
    }

}

