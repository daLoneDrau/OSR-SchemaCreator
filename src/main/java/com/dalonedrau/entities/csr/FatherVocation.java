package com.dalonedrau.entities.csr;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class FatherVocation {
    private SocialClass socialClass;
    @Unique
    @VarChar(length = 40)
    private String name;
    private int thievesGuildStatus;
    private int socialStatus;
    @CanBeNull
    int numStartingAnimalSkills;
    @CanBeNull
    int numStartingAgriculturalSkills;
    @CanBeNull
    int numStartingCombatSkills;
    @CanBeNull
    int numStartingOutdoorSkills;
    @CanBeNull
    int numStartingThieverySkills;
    @CanBeNull
    int numStartingBonusSkills;
    @JsonProperty("starting_skills")
    List<Skill> startingSkills;
    @JsonProperty("binary_skills")
    List<Skill> binarySkills;
    private int rollMin;
    private int rollMax;
    @CanBeNull
    private boolean isLiveried;
}
