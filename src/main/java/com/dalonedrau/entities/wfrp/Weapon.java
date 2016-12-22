package com.dalonedrau.entities.wfrp;

import java.util.List;

import com.dalonedrau.schemacreator.Annotations.CanBeNull;
import com.dalonedrau.schemacreator.Annotations.Schema;
import com.dalonedrau.schemacreator.Annotations.VarChar;
import com.fasterxml.jackson.annotation.JsonProperty;

@Schema(name = "wfrp")
public class Weapon {
    @CanBeNull
    @JsonProperty("melee_weapon_data")
    private MeleeWeapon meleeWeaponData;
    @CanBeNull
    @JsonProperty("missile_weapon_data")
    private MissileWeapon missileWeaponData;
    @VarChar(length = 40)
    private String name;
    private List<WeaponQuality> qualities;
    @JsonProperty("two_handed")
    private boolean twoHanded;
    @JsonProperty("weapon_group")
    private WeaponGroup weaponGroup;
}
