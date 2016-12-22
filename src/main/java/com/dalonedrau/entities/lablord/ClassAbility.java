package com.dalonedrau.entities.lablord;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

/**
 * @author drau
 */
public final class ClassAbility {
    @Unique
    private int code;
    @Unique
    private String description;
    @Unique
    @VarChar(length = 20)
    private String name;
}
