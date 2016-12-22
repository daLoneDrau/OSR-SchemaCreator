package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.MappedSuperclass;;

@MappedSuperclass
public class Hexagon {
    /** the hexagon's orientation; flat or pointed on top. */
    private final boolean flat;
    /** the hexagon's height. */
    private float height;
    /** the horizontal distance between adjacent hexes. */
    private float horizontalDistance;
    /** the distance between a hexagon's center point and a corner. */
    private float size;
    /** the vertical distance between adjacent hexes. */
    private float verticalDistance;
    /** the hexagon's width. */
    private float width;
    /** cube coordinates. */
    private int x, y, z;
    /**
     * Creates a new instance of {@link Hexagon}.
     * @param isFlat flag indicating whether the hexagon is flat on top or
     *            pointy
     * @param newSize the hexagon's new size
     */
    public Hexagon(final boolean isFlat) {
        flat = isFlat;
    }
}
