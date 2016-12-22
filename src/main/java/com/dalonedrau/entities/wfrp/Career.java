package com.dalonedrau.entities.wfrp;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

@Schema(name = "wfrp")
public class Career {
    @CanBeNull
    @JsonProperty("advance_a")
    private int advanceA;
    @CanBeNull
    @JsonProperty("advance_ag")
    private int advanceAg;
    @CanBeNull
    @JsonProperty("advance_bs")
    private int advanceBs;
    @CanBeNull
    @JsonProperty("advance_fel")
    private int advanceFel;
    @CanBeNull
    @JsonProperty("advance_fp")
    private int advanceFp;
    @CanBeNull
    @JsonProperty("advance_int")
    private int advanceInt;
    @CanBeNull
    @JsonProperty("advance_ip")
    private int advanceIp;
    @CanBeNull
    @JsonProperty("advance_m")
    private int advanceM;
    @CanBeNull
    @JsonProperty("advance_mag")
    private int advanceMag;
    @CanBeNull
    @JsonProperty("advance_s")
    private int advanceS;
    @CanBeNull
    @JsonProperty("advance_sb")
    private int advanceSb;
    @CanBeNull
    @JsonProperty("advance_t")
    private int advanceT;
    @CanBeNull
    @JsonProperty("advance_tb")
    private int advanceTb;
    @CanBeNull
    @JsonProperty("advance_w")
    private int advanceW;
    @CanBeNull
    @JsonProperty("advance_wp")
    private int advanceWp;
    @CanBeNull
    @JsonProperty("advance_ws")
    private int advanceWs;
    @CanBeNull
    @JsonProperty("allowed_gender")
    private Gender allowedGender;
    @JsonProperty("career_entries")
    private List<Career> careerEntries;
    @JsonProperty("career_exits")
    private List<Career> careerExits;
    private String description;
    @JsonProperty("disallowed_races")
    private List<Race> disallowedRaces;
    private String saying;
    @JsonProperty("skill_choices")
    private List<SkillChoice> skillChoices;
    private List<Skill> skills;
    private Sourcebook sourcebook;
    @JsonProperty("talent_choices")
    private List<TalentChoice> talentChoices;
    private List<Talent> talents;
    @Unique
    @VarChar(length = 40)
    private String title;
    @CanBeNull
    @JsonProperty("title_female")
    @Unique
    @VarChar(length = 40)
    private String titleFemale;
    private List<Equipment> trappings;
    private CareerType type;
}
