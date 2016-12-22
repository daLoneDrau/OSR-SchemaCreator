package com.dalonedrau.entities.wfrp;

import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

@Schema(name = "wfrp")
public class ArmourCoverage {
    @Unique
    private int flag;
    @Unique
    @VarChar(length = 10)
    private String name;
}
