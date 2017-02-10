package com.dalonedrau.entities.ff;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Command {
    String name;
    @JsonProperty("sort_order")
    int sortOrder;
}
