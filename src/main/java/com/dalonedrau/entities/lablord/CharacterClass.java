package com.dalonedrau.entities.lablord;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class CharacterClass {
    private List<ClassAbility> abilities;
    @Unique
    private String description;
    private DieRoll hitDice;
    private List<Language> languages;
    private int maxLevel;
    @Unique
    @VarChar(length = 10)
    private String name;
    private List<Ability> primeRequisites;
    private List<AbilityRequirement> requirements;
}
