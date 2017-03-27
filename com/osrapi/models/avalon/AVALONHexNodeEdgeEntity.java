package com.osrapi.models.avalon;

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
@Table(name = "hex_node_edge", schema = "avalon")
public final class AVALONHexNodeEdgeEntity {
    /**
     * the primary key - an autogenerated id (unique for each user in the db).
     */
    @Id
    @Column(name = "hex_node_edge_id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
  generator = "hex_node_edge_seq")
    @SequenceGenerator(
        name = "hex_node_edge_seq",
        sequenceName = "avalon.hex_node_edge_id_seq",
        allocationSize = 1
    )
    private Long                    id;
    /** Creates a new instance of {@link AVALONHexNodeEdgeEntity}. */
    public AVALONHexNodeEdgeEntity() {
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

    /** the path. */
    @ManyToOne(targetEntity = AVALONHexPathEntity.class, fetch = FetchType.EAGER)
    @Fetch(FetchMode.SELECT)
    @JoinColumn(name = "path")
    @JsonProperty("path")
  @NotNull
    private AVALONHexPathEntity    path;
    /**
     * Gets the path.
     * @return {@link AVALONHexPathEntity}
     */
    public AVALONHexPathEntity getPath() {
        return path;
    }
    /**
     * Sets the path.
     * @param val the new value
     */
    public void setPath(final AVALONHexPathEntity val) {
        path = val;
    }

    /** the clearingTo. */
    @ManyToOne(targetEntity = AVALONHexClearingEntity.class, fetch = FetchType.EAGER)
    @Fetch(FetchMode.SELECT)
    @JoinColumn(name = "clearingTo")
    @JsonProperty("clearing_to")
  @NotNull
    private AVALONHexClearingEntity    clearingTo;
    /**
     * Gets the clearingTo.
     * @return {@link AVALONHexClearingEntity}
     */
    public AVALONHexClearingEntity getClearingTo() {
        return clearingTo;
    }
    /**
     * Sets the clearingTo.
     * @param val the new value
     */
    public void setClearingTo(final AVALONHexClearingEntity val) {
        clearingTo = val;
    }

    /** the clearingFrom. */
    @ManyToOne(targetEntity = AVALONHexClearingEntity.class, fetch = FetchType.EAGER)
    @Fetch(FetchMode.SELECT)
    @JoinColumn(name = "clearingFrom")
    @JsonProperty("clearing_from")
  @NotNull
    private AVALONHexClearingEntity    clearingFrom;
    /**
     * Gets the clearingFrom.
     * @return {@link AVALONHexClearingEntity}
     */
    public AVALONHexClearingEntity getClearingFrom() {
        return clearingFrom;
    }
    /**
     * Sets the clearingFrom.
     * @param val the new value
     */
    public void setClearingFrom(final AVALONHexClearingEntity val) {
        clearingFrom = val;
    }

}

