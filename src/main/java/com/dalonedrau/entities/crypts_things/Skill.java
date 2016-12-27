package com.dalonedrau.entities.crypts_things;

import com.dalonedrau.schemacreator.Annotations.Unique;
import com.dalonedrau.schemacreator.Annotations.VarChar;

/**
 * 
 * @author 588648
 *
 */
public final class Skill {
    /** description. */
    @Unique
    private String description;
    /** name. */
    @Unique
    @VarChar(length = 40)
    private String name;
}
