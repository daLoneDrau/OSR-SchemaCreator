package com.dalonedrau.entities.wfrp;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

/**
 * @author drau
 */
public class Sourcebook {
    /** the code. */
    @Unique
    @VarChar(length = 5)
    private String code;
    /** the name. */
    @Unique
    @VarChar(length = 50)
    private String name;
    /** flag indicating the book is owned. */
    private boolean owned;
}
