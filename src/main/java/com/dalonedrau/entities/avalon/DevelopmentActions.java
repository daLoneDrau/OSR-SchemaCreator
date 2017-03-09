package com.dalonedrau.entities.avalon;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.UniqueCompositeKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

@UniqueCompositeKey(column0 = "action", column1 = "quantity")
public class DevelopmentActions {
    @JsonProperty("action")
    ActionChit action;
    int quantity;
    @Unique
    @VarChar(length = 20)
    String code;
}
