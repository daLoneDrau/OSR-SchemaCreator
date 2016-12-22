package com.dalonedrau.entities.wfrp;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

@Schema(name = "wfrp")
public class Armour {
    private int ap;
    private List<ArmourCoverage> coverage;
    @Unique
    @VarChar(length = 40)
    private String name;
    private ArmourType type;
}
