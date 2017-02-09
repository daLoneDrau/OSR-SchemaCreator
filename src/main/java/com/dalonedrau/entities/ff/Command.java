package com.dalonedrau.entities.ff;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Command {
    @JsonProperty("sort_order")
    int sortOrder;
    String name;
}
