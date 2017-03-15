package com.osrapi.models.csr;

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
@Table(name = "social_class", schema = "csr")
public final class CSRSocialClassEntity {
    /**
     * the primary key - an autogenerated id (unique for each user in the db).
     */
    @Id
    @Column(name = "social_class_id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
  generator = "social_class_seq")
    @SequenceGenerator(
        name = "social_class_seq",
        sequenceName = "csr.social_class_id_seq",
        allocationSize = 1
    )
    private Long                    id;
    /** Creates a new instance of {@link CSRSocialClassEntity}. */
    public CSRSocialClassEntity() {
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

    /** the pointsAdjustment. */
    @Column(name = "points_adjustment")
    @JsonProperty("points_adjustment")
    @NotNull
    private long                    pointsAdjustment;
    /**
     * Gets the pointsAdjustment.
     * @return {@link long}
     */
    public long getPointsAdjustment() {
        return pointsAdjustment;
    }
    /**
     * Sets the pointsAdjustment.
     * @param val the new value
     */
    public void setPointsAdjustment(final long val) {
        pointsAdjustment = val;
    }

    /** the rollMax. */
    @Column(name = "roll_max")
    @JsonProperty("roll_max")
    @NotNull
    private long                    rollMax;
    /**
     * Gets the rollMax.
     * @return {@link long}
     */
    public long getRollMax() {
        return rollMax;
    }
    /**
     * Sets the rollMax.
     * @param val the new value
     */
    public void setRollMax(final long val) {
        rollMax = val;
    }

    /** the rollMin. */
    @Column(name = "roll_min")
    @JsonProperty("roll_min")
    @NotNull
    private long                    rollMin;
    /**
     * Gets the rollMin.
     * @return {@link long}
     */
    public long getRollMin() {
        return rollMin;
    }
    /**
     * Sets the rollMin.
     * @param val the new value
     */
    public void setRollMin(final long val) {
        rollMin = val;
    }

    /** the title. */
    @Column(name = "title")
    @JsonProperty("title")
    @NotNull
    private String                    title;
    /**
     * Gets the title.
     * @return {@link String}
     */
    public String getTitle() {
        return title;
    }
    /**
     * Sets the title.
     * @param val the new value
     */
    public void setTitle(final String val) {
        title = val;
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

}

