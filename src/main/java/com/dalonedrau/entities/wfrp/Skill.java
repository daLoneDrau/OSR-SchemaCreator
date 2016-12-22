package com.dalonedrau.entities.wfrp;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

@Schema(name = "wfrp")
public class Skill {
    private Characteristic characteristic;
    @Unique
    private String description;
    @Unique
    @VarChar(length = 40)
    private String name;
    private List<Talent> talents;
    private SkillType type;
}
