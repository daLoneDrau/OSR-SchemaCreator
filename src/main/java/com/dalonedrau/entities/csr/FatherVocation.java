package com.dalonedrau.entities.csr;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class FatherVocation {
    @CanBeNull
    @JsonProperty("overlord")
    private FatherVocation overlord;
    private SocialClass socialClass;
    @Unique
    @VarChar(length = 40)
    private String name;
    private int feudalHolding;
    private int thievesGuildStatus;
    private int numBonusD10SocialStatus;
    private int socialStatus;
    @CanBeNull
    int numStartingAnimalSkills;
    @CanBeNull
    int numStartingAgriculturalSkills;
    @CanBeNull
    int numStartingArtisticSkills;
    @CanBeNull
    int numStartingCrafttSkills;
    @CanBeNull
    int numStartingCombatSkills;
    @CanBeNull
    int numStartingLoreSkills;
    @CanBeNull
    int numStartingOutdoorSkills;
    @CanBeNull
    int numStartingSeaSkills;
    @CanBeNull
    int numStartingThieverySkills;
    @CanBeNull
    int numStartingTradeSkills;
    @CanBeNull
    int numStartingBonusSkills;
    @CanBeNull
    int numStartingBinary0MagickMethods;
    @CanBeNull
    int numStartingBinary1MagickMethods;
    @CanBeNull
    int numStartingBinary1LoreSkills;
    @CanBeNull
    int numStartingForeignLanguages;
    @CanBeNull
    int numStartingWrittenLanguages;
    @CanBeNull
    int readingIntRequired;
    @JsonProperty("starting_skills")
    List<Skill> startingSkills;
    @JsonProperty("binary_skills")
    List<Skill> binarySkills;
    private int rollMin;
    private int rollMax;
    @CanBeNull
    private boolean isLiveried;
}
