package com.dalonedrau.entities.wfrp;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Character {
	private int				agility;
	private int				attacks;
	@JsonProperty("ballistic_skill")
	private int				ballisticSkill;
	@JsonProperty("fate_points")
	private int				fatePoints;
	private int				fellowship;
	private Gender			gender;
	@JsonProperty("insanity_points")
	private int				insanityPoints;
	private int				intelligence;
	private int				magic;
	private int				movement;
	private String			name;
	private Race			race;
	private List<Skill>		skills;
	private int				strength;
	@JsonProperty("strength_bonus")
	private int				strengthBonus;
	private List<Talent>	talents;
	private int				toughness;
	@JsonProperty("toughness_bonus")
	private int				toughnessBonus;
	@JsonProperty("weapon_skill")
	private int				weaponSkill;
	@JsonProperty("will_power")
	private int				willPower;
	private int				wounds;
}
