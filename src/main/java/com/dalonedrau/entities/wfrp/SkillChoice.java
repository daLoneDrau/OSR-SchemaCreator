package com.dalonedrau.entities.wfrp;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

@Schema(name = "wfrp")
public class SkillChoice {
	@Unique
	@VarChar(length = 40)
	private String		name;
	@JsonProperty("num_to_choose")
	private int			numToChoose;
	private List<Skill>	skills;
}
