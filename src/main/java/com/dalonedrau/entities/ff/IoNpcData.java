package com.dalonedrau.entities.ff;

import java.util.Map;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;

public class IoNpcData {
    /** the set of attributes defining the NPC. */
    @MapForeignKey(keyField = "code", keyTargetClass = "Attribute",
            keyColumnType = "character varying(3)",
            valueColumnType = "smallint")
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
    /** the {@link IoNpcData}'s script. */
    @MapForeignKey(keyColumnType = "character varying(20)", keyField = "code",
            keyTargetClass = "Event", valueColumnType = "character varying(50)",
            valueTargetClass = "ScriptBundle", valueField = "name")
    private Map<String, String> scriptedEvents;
    /** the {@link IoNpcData}'s title. */
    @VarChar(length = 50)
    private String title;
    @CanBeNull
    int xpvalue;
}
