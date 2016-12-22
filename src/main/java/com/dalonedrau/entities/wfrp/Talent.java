package com.dalonedrau.entities.wfrp;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

@Schema(name = "wfrp")
public class Talent {
    @Unique
    private String description;
    @Unique
    @VarChar(length = 40)
    private String name;
    @CanBeNull
    private Talent prerequisite;
}
