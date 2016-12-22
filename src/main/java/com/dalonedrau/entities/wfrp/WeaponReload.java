package com.dalonedrau.entities.wfrp;

import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

@Schema(name = "wfrp")
public class WeaponReload {
    @Unique
    private int code;
    @Unique
    @VarChar(length = 20)
    private String name;
}
