package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.IntegerNumericType;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class NodeType {
    private String description;
    @Unique
    @VarChar(length = 40)
    private String code;
}
