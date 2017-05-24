package com.dalonedrau.entities.ff;

import com.dalonedrau.entities.bp.ScriptActionType;
import com.dalonedrau.schemacreator.Annotations.ForeignKey;
import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.UniqueCompositeKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

@UniqueCompositeKey(columns = { "name", "x", "y" })
public final class MapCell {
    private String name;
    private int x;
    private int y;
    private MapTile tile;
}
