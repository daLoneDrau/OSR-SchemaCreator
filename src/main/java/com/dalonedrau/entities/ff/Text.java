package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Text {
    @Unique
    @VarChar(length = 255)
    private String name;
    @Unique
    private String text;
}
