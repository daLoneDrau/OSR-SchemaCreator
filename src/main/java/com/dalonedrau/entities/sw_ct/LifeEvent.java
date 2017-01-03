package com.dalonedrau.entities.sw_ct;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class LifeEvent {
    @Unique
    private String description;
    private List<EquipmentItemModifier> modifiers;
    @Unique
    @VarChar(length = 20)
    private String name;
}
