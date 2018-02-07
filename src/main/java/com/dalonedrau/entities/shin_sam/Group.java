package com.dalonedrau.entities.shin_sam;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Group {
    @Unique
    @VarChar(length = 255)
    private String name;
}
