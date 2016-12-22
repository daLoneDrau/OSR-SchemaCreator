package com.dalonedrau.entities.lablord;

import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Character {
    private int armorClass;
    private int charisma;
    private int constitution;
    private int dexterity;
    private int experience;
    private int hitPoints;
    private int intelligence;
    private int level;
    private int maxHitPoints;
    @VarChar(length = 40)
    private String name;
    private int strength;
    private int wisdom;
}
