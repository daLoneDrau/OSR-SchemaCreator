package com.osrapi.models.shin_sam;

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
@Table(name = "currency", schema = "shin_sam")
public final class SHIN_SAMCurrencyEntity {
    /**
     * the primary key - an autogenerated id (unique for each user in the db).
     */
    @Id
    @Column(name = "currency_id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
  generator = "currency_seq")
    @SequenceGenerator(
        name = "currency_seq",
        sequenceName = "shin_sam.currency_id_seq",
        allocationSize = 1
    )
    private Long                    id;
    /** Creates a new instance of {@link SHIN_SAMCurrencyEntity}. */
    public SHIN_SAMCurrencyEntity() {
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

    /** the sortOrder. */
    @Column(name = "sort_order")
    @JsonProperty("sort_order")
    @NotNull
    private long                    sortOrder;
    /**
     * Gets the sortOrder.
     * @return {@link long}
     */
    public long getSortOrder() {
        return sortOrder;
    }
    /**
     * Sets the sortOrder.
     * @param val the new value
     */
    public void setSortOrder(final long val) {
        sortOrder = val;
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

    @ElementCollection
    @CollectionTable(name = "currency_exchange_rates_lookup",
  schema = "shin_sam", joinColumns = @JoinColumn(name = "currency_id"))
    @MapKeyColumn(name = "key")
    @Column(name = "value")
    @JsonProperty("exchange_rates")
    private Map<String, Float> exchangeRates;
    /**
     * Gets the map of exchangeRates.
     * @return {@link Map}<{@link String}, {@link Float}>
     */
    public Map<String, Float> getExchangeRates() {
        return exchangeRates;
    }
    /**
     * Sets the mapping for exchangeRates.
     * @param val the new value
     */
    public void setExchangeRates(Map<String, Float> val) {
        exchangeRates = val;
    }

}

