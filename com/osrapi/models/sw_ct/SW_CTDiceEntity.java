package com.osrapi.models.sw_ct;

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
@Table(name = "dice", schema = "sw_ct")
public final class SW_CTDiceEntity {
    /**
     * the primary key - an autogenerated id (unique for each user in the db).
     */
    @Id
    @Column(name = "dice_id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
  generator = "dice_seq")
    @SequenceGenerator(
        name = "dice_seq",
        sequenceName = "sw_ct.dice_id_seq",
        allocationSize = 1
    )
    private Long                    id;
    /** Creates a new instance of {@link SW_CTDiceEntity}. */
    public SW_CTDiceEntity() {
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

    /** the plus. */
    @Column(name = "plus")
    @JsonProperty("plus")
    
    private Long                    plus;
    /**
     * Gets the plus.
     * @return {@link Long}
     */
    public Long getPlus() {
        return plus;
    }
    /**
     * Sets the plus.
     * @param val the new value
     */
    public void setPlus(final Long val) {
        plus = val;
    }

    /** the number. */
    @Column(name = "number")
    @JsonProperty("number")
    @NotNull
    private long                    number;
    /**
     * Gets the number.
     * @return {@link long}
     */
    public long getNumber() {
        return number;
    }
    /**
     * Sets the number.
     * @param val the new value
     */
    public void setNumber(final long val) {
        number = val;
    }

    /** the die. */
    @ManyToOne(targetEntity = SW_CTDieEntity.class, fetch = FetchType.EAGER)
    @Fetch(FetchMode.SELECT)
    @JoinColumn(name = "die")
    @JsonProperty("die")
  @NotNull
    private SW_CTDieEntity    die;
    /**
     * Gets the die.
     * @return {@link SW_CTDieEntity}
     */
    public SW_CTDieEntity getDie() {
        return die;
    }
    /**
     * Sets the die.
     * @param val the new value
     */
    public void setDie(final SW_CTDieEntity val) {
        die = val;
    }

    /** the code. */
    @Column(name = "code")
    @JsonProperty("code")
    @NotNull
    private String                    code;
    /**
     * Gets the code.
     * @return {@link String}
     */
    public String getCode() {
        return code;
    }
    /**
     * Sets the code.
     * @param val the new value
     */
    public void setCode(final String val) {
        code = val;
    }

}

