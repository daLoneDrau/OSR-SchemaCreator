package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.UniqueCompositeKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

@UniqueCompositeKey(columns = { "name", "x", "y" })
public final class MapCell {
    /** the name of the map level to which the cell belongs. */
    @JsonProperty("level_name")
    @VarChar(length = 200)
    private String levelName;
    /** the type of map tile the cell is. */
    private MapTile mapTile;
    /** the cell's unique name for identifying in the database. */
    @Unique
    @VarChar(length = 200)
    private String name;
    /** the cell's x-position. */
    private int x;
    /** the cell's y-position. */
    private int y;
}
