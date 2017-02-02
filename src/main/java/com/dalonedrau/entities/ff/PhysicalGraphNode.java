package com.dalonedrau.entities.ff;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;

public class PhysicalGraphNode {
    @CanBeNull
    private boolean isMainNode;
    private int roomNumber;
    private Terrain terrain;
    private int x;
    private int y;
}
