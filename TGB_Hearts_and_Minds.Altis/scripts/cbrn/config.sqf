// how much damage before death, 50% starts internal contamination
cbrn_maxDamage = 100;

// backpacks considered oxygen tanks
cbrn_backpacks = [	"B_SCBA_01_F",
					"B_CombinationUnitRespirator_01_F",
					"SE_SEVA_Oxygen_Tank"
	];

// backpacks considered air conditioners; help reduce fogging
cbrn_conditioning = [	"B_CombinationUnitRespirator_01_F", 
						"SE_SEVA_Oxygen_Tank"];

// uniforms considered CBRN suits
cbrn_suits = ["U_C_CBRN_Suit_01_Blue_F",
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
	"CAU_U_CBRN_winter","CAU_U_CBRN_yellow"]
	;

// goggles considered gas masks (filters included)
cbrn_masks = ["SCE_G_CN2F","SCE_G_CN3P","SE_GP21","SE_GP5","SE_GP7","CAU_G_CBRN_m04_3cd_hood","CAU_G_CBRN_m04_blk_hood","CAU_G_CBRN_m04_blue_hood","CAU_G_CBRN_m04_cadpat_hood","CAU_G_CBRN_m04_ce_hood","CAU_G_CBRN_m04_dcp_hood","CAU_G_CBRN_m04_ddpm_hood","CAU_G_CBRN_m04_dpm_hood","CAU_G_CBRN_m04_fleck_hood","CAU_G_CBRN_m04_flora_hood","CAU_G_CBRN_m04_gray_hood","CAU_G_CBRN_m04_green_hood","CAU_G_CBRN_m04_hoodless","CAU_G_CBRN_m04_jeitai_hood","CAU_G_CBRN_m04_m81_hood","CAU_G_CBRN_m04_m84_hood","CAU_G_CBRN_m04_m90_hood","CAU_G_CBRN_m04_mc_hood","CAU_G_CBRN_m04_mtp_hood","CAU_G_CBRN_m04_orange_hood","CAU_G_CBRN_m04_red_hood","CAU_G_CBRN_m04_tstripe_hood","CAU_G_CBRN_m04_tubitak_hood","CAU_G_CBRN_m04_ucp_hood","CAU_G_CBRN_m04_urban_hood","CAU_G_CBRN_m04_white_hood","CAU_G_CBRN_m04_winter_hood","CAU_G_CBRN_m04_yellow_hood","SE_M17","SCE_G_M334","SCE_G_M40_1","SCE_G_M40_2","CAU_G_CBRN_m50_3cd_hood","CAU_G_CBRN_m50_blk_hood","CAU_G_CBRN_m50_blue_hood","CAU_G_CBRN_m50_cadpat_hood","CAU_G_CBRN_m50_ce_hood","CAU_G_CBRN_m50_dcp_hood","CAU_G_CBRN_m50_ddpm_hood","CAU_G_CBRN_m50_dpm_hood","CAU_G_CBRN_m50_fleck_hood","CAU_G_CBRN_m50_flora_hood","CAU_G_CBRN_m50_gray_hood","CAU_G_CBRN_m50_green_hood","CAU_G_CBRN_m50_hoodless","CAU_G_CBRN_m50_jeitai_hood","CAU_G_CBRN_m50_m81_hood","CAU_G_CBRN_m50_m84_hood","CAU_G_CBRN_m50_m90_hood","CAU_G_CBRN_m50_mc_hood","CAU_G_CBRN_m50_mtp_hood","CAU_G_CBRN_m50_orange_hood","CAU_G_CBRN_m50_red_hood","CAU_G_CBRN_m50_tstripe_hood","CAU_G_CBRN_m50_tubitak_hood","CAU_G_CBRN_m50_ucp_hood","CAU_G_CBRN_m50_urban_hood","CAU_G_CBRN_m50_white_hood","CAU_G_CBRN_m50_winter_hood","CAU_G_CBRN_m50_yellow_hood","SE_PBF","SE_PPM88","SE_Respirator","G_Respirator_blue_F","SE_Respirator_Goggles","G_Respirator_white_F","G_Respirator_yellow_F","CAU_G_CBRN_s10_3cd","CAU_G_CBRN_s10_blk","CAU_G_CBRN_s10_blue","CAU_G_CBRN_s10_cadpat","CAU_G_CBRN_s10_ce","CAU_G_CBRN_s10_dcp","CAU_G_CBRN_s10_ddpm","CAU_G_CBRN_s10_dpm","CAU_G_CBRN_s10_fleck","CAU_G_CBRN_s10_flora","CAU_G_CBRN_s10_gray","CAU_G_CBRN_s10_green","CAU_G_CBRN_s10_jeitai","CAU_G_CBRN_s10_m81","CAU_G_CBRN_s10_m84","CAU_G_CBRN_s10_m90","CAU_G_CBRN_s10_mc","CAU_G_CBRN_s10_mtp","CAU_G_CBRN_s10_orange","CAU_G_CBRN_s10_red","CAU_G_CBRN_s10_tstripe","CAU_G_CBRN_s10_tubitak","CAU_G_CBRN_s10_ucp","CAU_G_CBRN_s10_urban","CAU_G_CBRN_s10_white","CAU_G_CBRN_s10_winter","CAU_G_CBRN_s10_yellow","SE_S10"];

// Item that is considered a threat meter
cbrn_threatMeteritem = "ACE_microDAGR";
cbrn_threatGeiger = "ACE_microDAGR";

// after how much time does the air run out in an oxygen tank (in seconds!)
cbrn_maxOxygenTime = 60 * 30;

// should auto damage occur after 50% damage threshold has been reached?
cbrn_allowPassiveDamage = true;

// time in seconds how much water a decon shower has, in seconds
cbrn_deconWaterTime = 60 * 2;

// healing rate for each second, does nothing if 0 or below, or player while player is experiencing passive contamination
cbrn_healingRate = 0;


// FOGGING SETTINGS
// enables or disables fogging entirely
cbrn_foggingEnabled = true;
// time after which the gas mask starts fogging up; default 5 mins
cbrn_fogStartTime = 60 * 5;
// maximum time after which the gas mask is fully fogged up; default 10 mins
cbrn_fogMaxTime = 60 * 10;
// fog accumulation coefficient; used when unit wears a backpack considered an air conditioner; lower means fogging accumulates slower, 0 stops it entirely; default 0.5
cbrn_fogAccumulationCoef = 0.5;
// fog fading coefficient; is used in multiplication with the frame-time delta in fogPFH when the gasmask is taken off; higher means accumulated fog will fade faster; default 5
cbrn_fogFadeCoef = 5;
// max fog visibillity; value from 0 to 1, decimals allowed. Sets the maximum visibility of the fog layer; default 1
cbrn_fogMaxAlpha = 1;

// FATIGUE SETTINGS
// whether or not fogging takes Fatigue into account
cbrn_fogFatigueEnabled = true;
// Fatigue coefficient; is used in multiplication with the ACE fatigue value; higher means quicker fogging if unit has any fatigue
cbrn_fogFatigueCoef = 1;


// configure vehicles to be CBRN proof
// list of arrays, first entry vehicle class or 3den editor object name as string, second entry amount of proofing. The amount is the same measurement as zone threat levels
cbrn_vehicles = [
    ["vroomvroom", 5],
    ["B_Quadbike_01_F", 1]
];
