package com.dalonedrau.entities.ff;

import java.util.List;
import java.util.Map;

import com.dalonedrau.entities.avalon.Group;
import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.ForeignKey;
import com.dalonedrau.schemacreator.Annotations.MapForeignKey;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

public class IoNpcData {
    /** the set of attributes defining the NPC. */
    @MapForeignKey(keyColumnType = "character varying(3)", keyField = "code",
            keyTargetClass = "Attribute", valueColumnType = "smallint")
    private Map<String, Integer> attributes;
    @CanBeNull
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
    @CanBeNull
    private Gender gender;
    /** the list of groups the item belongs to. */
    private List<Group> groups;
    /** the name of the internal script used. */
    @JsonProperty("internal_script")
    @VarChar(length = 255)
    private String internalScript;
    /** the name of the internal script used in the javascript implementation. */
    @JsonProperty("internal_script_js")
    @VarChar(length = 255)
    private String internalScriptJs;
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
    @ForeignKey(clazz = IoItemData.class, fieldName = "name")
    private String weapon;
    @CanBeNull
    int xpvalue;
}
