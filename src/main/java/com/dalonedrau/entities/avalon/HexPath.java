package com.dalonedrau.entities.avalon;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class HexPath {
    @Unique
    @VarChar(length = 20)
    String code;
    List<Vector3> path;
}
