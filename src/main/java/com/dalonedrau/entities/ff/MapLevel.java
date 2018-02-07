package com.dalonedrau.entities.ff;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.UniqueCompositeKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

@UniqueCompositeKey(columns = { "name", "elevation" })
public final class MapLevel {
    /** the name of the map level. */
    @VarChar(length = 200)
    private String name;
    private int elevation;
    /** the list of cells on the level. */
    private List<MapCell> cells;
}
