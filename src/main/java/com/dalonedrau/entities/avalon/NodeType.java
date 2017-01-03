package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class NodeType {
    @Unique
    @VarChar(length = 40)
    private String code;
    private String description;
}
