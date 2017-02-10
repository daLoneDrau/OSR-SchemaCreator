package com.dalonedrau.entities.ff;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class Room {
    @Unique
    @VarChar(length = 3)
    private String code;
    private List<Command> commands;
}
