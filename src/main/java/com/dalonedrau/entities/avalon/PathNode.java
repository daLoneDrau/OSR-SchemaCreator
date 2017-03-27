package com.dalonedrau.entities.avalon;

import com.fasterxml.jackson.annotation.JsonProperty;

public class PathNode {
    @JsonProperty("node")
    private Vector3 node;
    private int sortOrder;
}
