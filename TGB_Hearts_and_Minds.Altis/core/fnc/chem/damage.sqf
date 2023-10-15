
/* ----------------------------------------------------------------------------
Function: btc_chem_fnc_damage

Description:
    Apply chemical damage.

Parameters:
    _unit - Unit to apply the damage. [Object]
    _firstDamage - If no CBRN protection, true: Always apply damage, false: Damage are applied randomly. [Boolean]
    _bodyParts - List of body part. [Array]
    _cfgGlasses - Glasses config. [Config]

Returns:

Examples:
    (begin example)
        [cursorObject, true, ["head","body","hand_l","hand_r","leg_l","leg_r"], configFile >> "CfgGlasses"] call btc_chem_fnc_damage;
    (end)

Author:
    Vdauphin

---------------------------------------------------------------------------- */

params [
    ["_unit", objNull, [objNull]],
    ["_firstDamage", true, [true]],
    ["_bodyParts", [], [[]]],
    ["_cfgGlasses", configNull, [configNull]]
];

private _googles = goggles _unit;
private _backpack = backpack _unit;
private _uniform = toLower uniform _unit;
private _protection = 0;

if (
    [
        "G_Respirator_base_F"
    ] findIf {_googles isKindOf [_x, _cfgGlasses]} > -1
) then {
    _protection = _protection + selectRandom [0.15, 0.3]; // Less protection than respirator
} else {
    if (
        [
           "SCE_G_CN2F","SCE_G_CN3P","SE_GP21","SE_GP5","SE_GP7","CAU_G_CBRN_m04_3cd_hood","CAU_G_CBRN_m04_blk_hood","CAU_G_CBRN_m04_blue_hood","CAU_G_CBRN_m04_cadpat_hood","CAU_G_CBRN_m04_ce_hood","CAU_G_CBRN_m04_dcp_hood","CAU_G_CBRN_m04_ddpm_hood","CAU_G_CBRN_m04_dpm_hood","CAU_G_CBRN_m04_fleck_hood","CAU_G_CBRN_m04_flora_hood","CAU_G_CBRN_m04_gray_hood","CAU_G_CBRN_m04_green_hood","CAU_G_CBRN_m04_hoodless","CAU_G_CBRN_m04_jeitai_hood","CAU_G_CBRN_m04_m81_hood","CAU_G_CBRN_m04_m84_hood","CAU_G_CBRN_m04_m90_hood","CAU_G_CBRN_m04_mc_hood","CAU_G_CBRN_m04_mtp_hood","CAU_G_CBRN_m04_orange_hood","CAU_G_CBRN_m04_red_hood","CAU_G_CBRN_m04_tstripe_hood","CAU_G_CBRN_m04_tubitak_hood","CAU_G_CBRN_m04_ucp_hood","CAU_G_CBRN_m04_urban_hood","CAU_G_CBRN_m04_white_hood","CAU_G_CBRN_m04_winter_hood","CAU_G_CBRN_m04_yellow_hood","SE_M17","SCE_G_M334","SCE_G_M40_1","SCE_G_M40_2","CAU_G_CBRN_m50_3cd_hood","CAU_G_CBRN_m50_blk_hood","CAU_G_CBRN_m50_blue_hood","CAU_G_CBRN_m50_cadpat_hood","CAU_G_CBRN_m50_ce_hood","CAU_G_CBRN_m50_dcp_hood","CAU_G_CBRN_m50_ddpm_hood","CAU_G_CBRN_m50_dpm_hood","CAU_G_CBRN_m50_fleck_hood","CAU_G_CBRN_m50_flora_hood","CAU_G_CBRN_m50_gray_hood","CAU_G_CBRN_m50_green_hood","CAU_G_CBRN_m50_hoodless","CAU_G_CBRN_m50_jeitai_hood","CAU_G_CBRN_m50_m81_hood","CAU_G_CBRN_m50_m84_hood","CAU_G_CBRN_m50_m90_hood","CAU_G_CBRN_m50_mc_hood","CAU_G_CBRN_m50_mtp_hood","CAU_G_CBRN_m50_orange_hood","CAU_G_CBRN_m50_red_hood","CAU_G_CBRN_m50_tstripe_hood","CAU_G_CBRN_m50_tubitak_hood","CAU_G_CBRN_m50_ucp_hood","CAU_G_CBRN_m50_urban_hood","CAU_G_CBRN_m50_white_hood","CAU_G_CBRN_m50_winter_hood","CAU_G_CBRN_m50_yellow_hood","SE_PBF","SE_PPM88","SE_Respirator","G_Respirator_blue_F","SE_Respirator_Goggles","G_Respirator_white_F","G_Respirator_yellow_F","CAU_G_CBRN_s10_3cd","CAU_G_CBRN_s10_blk","CAU_G_CBRN_s10_blue","CAU_G_CBRN_s10_cadpat","CAU_G_CBRN_s10_ce","CAU_G_CBRN_s10_dcp","CAU_G_CBRN_s10_ddpm","CAU_G_CBRN_s10_dpm","CAU_G_CBRN_s10_fleck","CAU_G_CBRN_s10_flora","CAU_G_CBRN_s10_gray","CAU_G_CBRN_s10_green","CAU_G_CBRN_s10_jeitai","CAU_G_CBRN_s10_m81","CAU_G_CBRN_s10_m84","CAU_G_CBRN_s10_m90","CAU_G_CBRN_s10_mc","CAU_G_CBRN_s10_mtp","CAU_G_CBRN_s10_orange","CAU_G_CBRN_s10_red","CAU_G_CBRN_s10_tstripe","CAU_G_CBRN_s10_tubitak","CAU_G_CBRN_s10_ucp","CAU_G_CBRN_s10_urban","CAU_G_CBRN_s10_white","CAU_G_CBRN_s10_winter","CAU_G_CBRN_s10_yellow","SE_S10"
			
			]findIf {_googles isKindOf [_x, _cfgGlasses]} > -1
    ) then {
        _protection = _protection + 0.3;
    };
};
if (
    isPlayer _unit &&
    {_protection isEqualTo 0}
) then {
    if (_unit getVariable ["ace_medical_pain", 0] < 0.9) then {
        [_unit, 0.01] call ace_medical_fnc_adjustPainLevel;
    };
};
if (
    [
	"B_SCBA_01_F",
	"B_CombinationUnitRespirator_01_F",
	"SE_SEVA_Oxygen_Tank"
	] findIf {_backpack isKindOf _x} > -1
) then {
    _protection = _protection + 0.1;
};
if (_uniform isNotEqualTo "") then {
    _protection = _protection + 0.4;
    if (
        ["U_C_CBRN_Suit_01_Blue_F",
    "U_B_CBRN_Suit_01_MTP_F",
    "U_B_CBRN_Suit_01_Tropic_F",
    "U_C_CBRN_Suit_01_White_F",
    "U_B_CBRN_Suit_01_Wdl_F",
    "U_I_CBRN_Suit_01_AAF_F",
    "U_I_E_CBRN_Suit_01_EAF_F",
	"CAU_U_CBRN_3cd","CAU_U_CBRN_blk",
	"CAU_U_CBRN_blue","CAU_U_CBRN_cadpat",
	"CAU_U_CBRN_ce","SCE_ClearSky_CBRN",
	"CAU_U_CBRN_dcp","CAU_U_CBRN_ddpm",
	"CAU_U_CBRN_dpm","SCE_Duty_CBRN",
	"CAU_U_CBRN_fleck","CAU_U_CBRN_flora",
	"SCE_Freedom_CBRN","CAU_U_CBRN_gray",
	"CAU_U_CBRN_green","CAU_U_CBRN_jeitai",
	"SCE_Loner_CBRN","CAU_U_CBRN_m81",
	"CAU_U_CBRN_m84","CAU_U_CBRN_m90",
	"CAU_U_CBRN_mc","SCE_Military_CBRN",
	"CAU_U_CBRN_mtp","CAU_U_CBRN_orange",
	"CAU_U_CBRN_red","CAU_U_CBRN_tstripe",
	"CAU_U_CBRN_tubitak","CAU_U_CBRN_ucp",
	"CAU_U_CBRN_urban","CAU_U_CBRN_white",
	"CAU_U_CBRN_winter","CAU_U_CBRN_yellow"] findIf {_x in _uniform} > -1
    ) 	then {
        _protection = _protection + 0.2;
    };
};

if (_protection >= 1) exitWith {_this};

if (_firstDamage || (random 1 > _protection)) then {
    _this set [1, false];
    [_unit, random [0.05, 0.05, 0.2], selectRandom _bodyParts, "stab"] call ace_medical_fnc_addDamageToUnit; // ropeburn
};

_this
