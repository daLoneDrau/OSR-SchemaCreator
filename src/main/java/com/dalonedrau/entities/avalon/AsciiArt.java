package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class AsciiArt {
    @Unique
    @VarChar(length = 255)
    private String name;
    @Unique
    private String text;
}
