package com.dalonedrau.entities.avalon;

import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.ForeignKey;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class IoNpcData {
    /** the set of attributes defining the NPC. */
    @MapForeignKey(keyColumnType = "character varying(3)", keyField = "code",
            keyTargetClass = "Attribute", valueColumnType = "smallint")
    private Map<String, Integer> attributes;
    long behavior;
    @CanBeNull
    float behaviorParam;
    @CanBeNull
    float climbCount;
    @CanBeNull
    long collidState;
    @CanBeNull
    long collidTime;
    @CanBeNull
    float critical;
    @CanBeNull
    boolean cut;
    @CanBeNull
    int cuts;
    @CanBeNull
    float damages;
    /** the {@link IoNpcData}'s gender. */
    private Gender gender;
    /** the name of the internal script used. */
    @CanBeNull
    private String internalScript;
    @CanBeNull
    float life;
    @CanBeNull
    float mana;
    @CanBeNull
    float maxlife;
    @CanBeNull
    float maxmana;
    /** the {@link IoNpcData}'s name. */
    @VarChar(length = 50)
    private String name;
    /** all NPC flags. */
    @CanBeNull
    private long npcFlags;
    /** the {@link IoNpcData}'s title. */
    @VarChar(length = 50)
    private String title;
    @ForeignKey(clazz = IoItemData.class, fieldName = "name")
    private String weapon;
    @CanBeNull
    int xpvalue;
}
