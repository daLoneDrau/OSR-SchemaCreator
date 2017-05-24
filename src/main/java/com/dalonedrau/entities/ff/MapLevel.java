package com.dalonedrau.entities.ff;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public final class MapLevel {
    /** the name of the map level. */
    @Unique
    @VarChar(length = 200)
    private String name;
    /** the list of cells on the level. */
    private List<MapCell> cells;
}
