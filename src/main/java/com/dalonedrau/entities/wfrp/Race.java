package com.dalonedrau.entities.wfrp;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

@Schema(name = "wfrp")
public class Race {
    @Unique
    private String background;
    @Unique
    private int code;
    @Unique
    private String description;
    @Unique
    @VarChar(length = 10)
    private String name;
    @JsonProperty("skill_choices")
    private List<SkillChoice> skillChoices;
    private List<Skill> skills;
    @JsonProperty("talent_choices")
    private List<TalentChoice> talentChoices;
    private List<Talent> talents;
}
