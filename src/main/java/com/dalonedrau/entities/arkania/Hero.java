package com.dalonedrau.entities.arkania;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Hero {
	private float	acrophobia;
	private float	agility;
	private float	avarice;
	@JsonProperty("birth_day")
	private int		birthDay;
	@JsonProperty("birth_moon")
	private int		birthMoon;
	private float	charisma;
	private float	claustrophobia;
	private float	courage;
	private float	curiousity;
	private float	dexterity;
	private float	intuition;
	private float	necrophobia;
	private float	strength;
	private float	superstition;
	@JsonProperty("violent_temper")
	private float	violentTemper;
	private float	wisdom;

}
