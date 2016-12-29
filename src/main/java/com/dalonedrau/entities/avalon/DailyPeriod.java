package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public final class DailyPeriod {
    @Unique
    @VarChar(length = 40)
    private String name;
}
