local mod = get_mod("Rebalance")

--Melee
--Kruber
tmp.actions.action_one.light_attack_left.damage_profile = "one_hand_sword_light_1"
tmp.actions.action_one.light_attack_right.damage_profile = "one_hand_sword_light_1"
tmp.actions.action_one.light_attack_last.damage_profile = "one_hand_sword_light_3"
tmp.actions.action_one.light_attack_bopp.damage_profile = "one_hand_sword_push_attack"
tmp.actions.action_one.heavy_attack_left.damage_profile = "one_hand_sword_heavy_attack" 
tmp.actions.action_one.heavy_attack_right.damage_profile = "one_hand_sword_heavy_attack"

local tmp = Weapons.one_handed_hammer_template_1
tmp.actions.action_one.light_attack_left.hit_mass_count = TANK_HIT_MASS_COUNT
tmp.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
tmp.actions.action_one.light_attack_bopp.hit_mass_count = TANK_HIT_MASS_COUNT
tmp.actions.action_one.light_attack_last.damage_profile = "light_blunt_smiter"
tmp.actions.action_one.light_attack_last.additional_critical_strike_chance = 0.1

local tmp = Weapons.one_handed_hammer_template_2
tmp.actions.action_one.light_attack_left.hit_mass_count = TANK_HIT_MASS_COUNT
tmp.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
tmp.actions.action_one.light_attack_bopp.hit_mass_count = TANK_HIT_MASS_COUNT
tmp.actions.action_one.light_attack_last.damage_profile = "light_blunt_smiter"
tmp.actions.action_one.light_attack_last.additional_critical_strike_chance = 0.1

local tmp = Weapons.two_handed_hammers_template_1
tmp.actions.action_one.light_attack_push_left_up.damage_profile = "heavy_blunt_tank"

local tmp = AttackTemplates
tmp.heavy_blunt_tank.stagger_value = 2

local tmp = Weapons.two_handed_swords_template_1
tmp.actions.action_one.default.buff_data[1].external_multiplier = 0.6
tmp.actions.action_one.default_left.buff_data[1].external_multiplier = 0.6
tmp.actions.action_one.default_right.buff_data[1].external_multiplier = 0.6
tmp.actions.action_one.light_attack_right.anim_time_scale = 0.9*1.35
tmp.actions.action_one.light_attack_left.anim_time_scale = 0.9*1.35

local tmp = Weapons.one_handed_hammer_shield_template_1
tmp.actions.action_one.default.allowed_chain_actions[2].sub_action = "heavy_attack"
tmp.actions.action_one.default.allowed_chain_actions[6].sub_action = "heavy_attack"
tmp.actions.action_one.default_combo.allowed_chain_actions[2].sub_action = "heavy_attack"
tmp.actions.action_one.default_combo.allowed_chain_actions[6].sub_action = "heavy_attack"
tmp.actions.action_one.default_left_heavy.allowed_chain_actions[2].sub_action = "heavy_attack_left"
tmp.actions.action_one.default_left_heavy.allowed_chain_actions[6].sub_action = "heavy_attack_left"
tmp.actions.action_one.heavy_attack.allowed_chain_actions[1].sub_action = "default_left_heavy"
tmp.actions.action_one.heavy_attack_left.allowed_chain_actions[1].sub_action = "default_combo"
tmp.actions.action_one.default_combo.anim_event = "attack_swing_charge_pose"
tmp.actions.action_one.default_left_heavy.anim_event = "attack_swing_charge_left_pose"
tmp.actions.action_one.default.allowed_chain_actions[2].sub_action = "heavy_attack"
tmp.actions.action_one.default.allowed_chain_actions[6].sub_action = "heavy_attack"
tmp.actions.action_one.default.anim_event = "attack_swing_charge_pose"
tmp.actions.action_one.light_attack_bopp.range_mod = 1.3

local tmp = Weapons.one_handed_hammer_shield_template_2
tmp.actions.action_one.default.allowed_chain_actions[2].sub_action = "heavy_attack"
tmp.actions.action_one.default.allowed_chain_actions[6].sub_action = "heavy_attack"
tmp.actions.action_one.default_combo.allowed_chain_actions[2].sub_action = "heavy_attack"
tmp.actions.action_one.default_combo.allowed_chain_actions[6].sub_action = "heavy_attack"
tmp.actions.action_one.default_left_heavy.allowed_chain_actions[2].sub_action = "heavy_attack_left"
tmp.actions.action_one.default_left_heavy.allowed_chain_actions[6].sub_action = "heavy_attack_left"
tmp.actions.action_one.heavy_attack.allowed_chain_actions[1].sub_action = "default_left_heavy"
tmp.actions.action_one.heavy_attack_left.allowed_chain_actions[1].sub_action = "default_combo"
tmp.actions.action_one.default_combo.anim_event = "attack_swing_charge_pose"
tmp.actions.action_one.default_left_heavy.anim_event = "attack_swing_charge_left_pose"
tmp.actions.action_one.default.allowed_chain_actions[2].sub_action = "heavy_attack"
tmp.actions.action_one.default.allowed_chain_actions[6].sub_action = "heavy_attack"
tmp.actions.action_one.default.anim_event = "attack_swing_charge_pose"
tmp.actions.action_one.light_attack_bopp.range_mod = 1.3


local tmp = Weapons.dual_wield_hammer_sword_template 
tmp.actions.action_one.heavy_attack.damage_profile = "medium_slashing_axe_linesman_1h" 
tmp.actions.action_one.heavy_attack_2.damage_profile = "medium_slashing_axe_linesman_1h" 
tmp.actions.action_one.light_attack_left_diagonal.damage_profile = "light_blunt_tank_diag" 
tmp.actions.action_one.light_attack_right.damage_profile = "light_blunt_tank_diag" 
tmp.actions.action_one.light_attack_right_diagonal.damage_profile = "light_slashing_linesman" 
tmp.actions.action_one.light_attack_left.damage_profile = "light_slashing_linesman" 
tmp.actions.action_one.light_attack_right_diagonal.hit_mass_count = LINESMAN_HIT_MASS_COUNT 
tmp.actions.action_one.light_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT 
tmp.actions.action_one.heavy_attack.hit_mass_count = LINESMAN_HIT_MASS_COUNT 
tmp.actions.action_one.heavy_attack_2.hit_mass_count = LINESMAN_HIT_MASS_COUNT

local tmp = Weapons.two_handed_halberds_template_1
tmp.buffs.change_dodge_distance.external_optional_multiplier = 1
tmp.buffs.change_dodge_speed._external_optional_multiplier = 1
tmp.actions.action_one.default.anim_event = "attack_swing_charge_right"
tmp.actions.action_one.default.allowed_chain_actions[2].sub_action = "heavy_attack_stab"
tmp.actions.action_one.default.allowed_chain_actions[6].sub_action = "heavy_attack_stab"
tmp.actions.action_one.default_right.anim_event = "attack_swing_charge_left"
tmp.actions.action_one.default_right.allowed_chain_actions[2].sub_action = "heavy_attack_left"
tmp.actions.action_one.default_right.allowed_chain_actions[6].sub_action = "heavy_attack_left"
tmp.actions.action_one.heavy_attack_stab.allowed_chain_actions[1].sub_action = "default_right"
tmp.actions.action_one.heavy_attack_left.allowed_chain_actions[1].sub_action = "default"
tmp.actions.action_one.heavy_attack_left.hit_mass_count = HEAVY_LINESMAN_HIT_MASS_COUNT
tmp.actions.action_one.heavy_attack_left.slide_armour_hit = true

--Bardin
local tmp = Weapons.one_hand_axe_template_1
tmp.actions.action_one.light_attack_left.anim_time_scale = 0.9*1.15
tmp.actions.action_one.light_attack_left.buff_data[1].external_multiplier = 0.85
tmp.actions.action_one.light_attack_right.anim_time_scale = 0.9*1.15
tmp.actions.action_one.light_attack_right.buff_data[1].external_multiplier = 0.85
tmp.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.75
tmp.actions.action_one.light_attack_last.anim_time_scale = 0.9*1.15
tmp.actions.action_one.light_attack_last.buff_data[1].external_multiplier = 0.85
tmp.actions.action_one.light_attack_bopp.anim_time_scale = 0.9*1.15
tmp.actions.action_one.light_attack_bopp.buff_data[1].external_multiplier = 0.85
tmp.actions.action_one.light_attack_bopp.buff_data[1].external_multiplier = 0.85
tmp.actions.action_one.light_attack_left.damage_profile = "one_hand_axe_light_1"
tmp.actions.action_one.light_attack_right.damage_profile = "one_hand_axe_light_1"
tmp.actions.action_one.light_attack_last.damage_profile = "one_hand_axe_light_1"
tmp.actions.action_one.light_attack_bopp.damage_profile = "one_hand_axe_light_1"
tmp.actions.action_one.default.allowed_chain_actions[2].start_time = 0.75
tmp.actions.action_one.default_right.allowed_chain_actions[2].start_time = 0.75
tmp.actions.action_one.heavy_attack_left.damage_profile = "medium_blunt_smiter_2h_hammer"
tmp.actions.action_one.heavy_attack_right.damage_profile = "medium_blunt_smiter_2h_hammer"

local tmp = Weapons.one_hand_axe_template_2
tmp.actions.action_one.light_attack_left.anim_time_scale = 0.9*1.15
tmp.actions.action_one.light_attack_left.buff_data[1].external_multiplier = 0.85
tmp.actions.action_one.light_attack_right.anim_time_scale = 0.9*1.15
tmp.actions.action_one.light_attack_right.buff_data[1].external_multiplier = 0.85
tmp.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.75
tmp.actions.action_one.light_attack_last.anim_time_scale = 0.9*1.15
tmp.actions.action_one.light_attack_last.buff_data[1].external_multiplier = 0.85
tmp.actions.action_one.light_attack_bopp.anim_time_scale = 0.9*1.15
tmp.actions.action_one.light_attack_bopp.buff_data[1].external_multiplier = 0.85
tmp.actions.action_one.light_attack_left.damage_profile = "one_hand_axe_light_1"
tmp.actions.action_one.light_attack_right.damage_profile = "one_hand_axe_light_1"
tmp.actions.action_one.light_attack_last.damage_profile = "one_hand_axe_light_1"
tmp.actions.action_one.light_attack_bopp.damage_profile = "one_hand_axe_light_1"
tmp.actions.action_one.default.allowed_chain_actions[2].start_time = 0.75
tmp.actions.action_one.default_right.allowed_chain_actions[2].start_time = 0.75
tmp.actions.action_one.heavy_attack_left.damage_profile = "medium_blunt_smiter_2h_hammer"
tmp.actions.action_one.heavy_attack_right.damage_profile = "medium_blunt_smiter_2h_hammer"

local tmp = Weapons.two_handed_axes_template_1 
tmp.max_fatigue_points = 6 
tmp.actions.action_one.heavy_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT 
tmp.actions.action_one.heavy_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT 
tmp.actions.action_one.light_attack_up.damage_profile = "medium_slashing_smiter_2h"
tmp.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT 

local tmp = Weapons.one_hand_axe_shield_template_1
tmp.actions.action_one.light_attack_left.anim_time_scale = 0.9*1.20
tmp.actions.action_one.light_attack_right.anim_time_scale = 0.9*1.20
tmp.actions.action_one.light_attack_last.allowed_chain_actions[1].start_time = 0.5
tmp.actions.action_one.light_attack_last.anim_time_scale = 0.9*1.20
tmp.actions.action_one.light_attack_bopp.anim_time_scale = 0.9*1.20
tmp.actions.action_one.default.allowed_chain_actions[2].start_time = 0.5
tmp.actions.action_one.default_right.allowed_chain_actions[2].start_time = 0.5

local tmp = PowerLevelTemplates
tmp.default_target_smiter_L_dual_light.boost_curve_coefficient_headshot = 1.4
tmp.default_target_smiter_L_dual_heavy.boost_curve_coefficient_headshot = 1.6

local tmp = Weapons.two_handed_picks_template_1
tmp.actions.action_one.light_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT
tmp.actions.action_one.light_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT

--Kerillian
local tmp = Weapons.we_one_hand_sword_template_1
tmp.actions.action_one.light_attack_left.damage_profile = "one_hand_sword_wood_elf_light_1"
tmp.actions.action_one.light_attack_right.damage_profile = "one_hand_sword_wood_elf_light_1"
tmp.actions.action_one.light_attack_last.damage_profile = "one_hand_sword_wood_elf_light_3"
tmp.actions.action_one.light_attack_bopp.damage_profile = "one_hand_sword_wood_elf_light_1"
tmp.actions.action_one.heavy_attack_up.damage_profile = "medium_pointy_smiter_upper_1h"

local tmp = Weapons.two_handed_axes_template_2
tmp.max_fatigue_points = 6
tmp.actions.action_one.light_attack_left_upward.hit_mass_count = LINESMAN_HIT_MASS_COUNT
tmp.actions.action_one.light_attack_right_upward.hit_mass_count = LINESMAN_HIT_MASS_COUNT

local tmp = Weapons.we_one_hand_axe_template
tmp.actions.action_one.heavy_attack_left.damage_profile = "medium_blunt_smiter_2h_hammer"
tmp.actions.action_one.heavy_attack_right.damage_profile = "medium_blunt_smiter_2h_hammer"
tmp.actions.action_one.light_attack_last.anim_event = "attack_swing_down_right"
tmp.actions.action_one.light_attack_bopp.anim_event = "attack_swing_right"
tmp.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0.2

local tmp = Weapons.dual_wield_daggers_template_1
tmp.actions.action_one.light_attack_left.additional_critical_strike_chance = 0
tmp.actions.action_one.light_attack_right.additional_critical_strike_chance = 0

local tmp = Weapons.two_handed_swords_wood_elf_template 
tmp.actions.action_one.light_attack_right_upward.anim_time_scale = 0.9 * 1.3 
tmp.actions.action_one.light_attack_left_upward.anim_time_scale = 0.9 * 1.3

local tmp = Weapons.two_handed_spears_elf_template_1
tmp.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
tmp.actions.action_one.light_attack_right.hit_mass_count = LINESMAN_HIT_MASS_COUNT
tmp.actions.action_one.heavy_attack_left.hit_mass_count = LINESMAN_HIT_MASS_COUNT

local tmp = Weapons.one_handed_spears_shield_template
tmp.actions.action_one.light_attack_last.damage_window_start = 0.25
tmp.actions.action_one.light_attack_last.width_mod = 35
tmp.actions.action_one.light_attack_last.use_precision_sweep = false
tmp.actions.action_one.light_attack_last.damage_window_end = 0.5
tmp.actions.action_one.light_attack_last.damage_profile = "medium_slashing_linesman_spear"
tmp.actions.action_one.light_attack_last.anim_event = "attack_swing_heavy_left"
tmp.actions.action_one.light_attack_last.hit_mass_count = LINESMAN_HIT_MASS_COUNT
tmp.actions.action_one.light_attack_last.baked_sweep = {
				{
					0.2366666666666667,
					0.7809548377990723,
					-0.2959403991699219,
					-0.2136249542236328,
					0.6509445905685425,
					-0.3156726062297821,
					0.6759173274040222,
					-0.14056210219860077
				},
				{
					0.2744444444444445,
					0.8711352348327637,
					-0.0104217529296875,
					-0.20604801177978516,
					0.7065627574920654,
					-0.080995574593544,
					0.6747678518295288,
					-0.19722352921962738
				},
				{
					0.31222222222222223,
					0.7973527908325195,
					0.4665203094482422,
					-0.1959705352783203,
					0.7153200507164001,
					0.23850680887699127,
					0.5782932043075562,
					-0.31146225333213806
				},
				{
					0.35,
					0.4087977409362793,
					0.8449134826660156,
					-0.1537189483642578,
					0.554313600063324,
					0.4129331409931183,
					0.5676639080047607,
					-0.44719168543815613
				},
				{
					0.3877777777777778,
					-0.22560787200927734,
					0.8792953491210938,
					-0.15307044982910156,
					0.34384965896606445,
					0.5803931951522827,
					0.4398220479488373,
					-0.5928471684455872
				},
				{
					0.4255555555555556,
					-1.1989026069641113,
					0.8387851715087891,
					-0.1613750457763672,
					0.08192506432533264,
					0.6745684742927551,
					0.24504292011260986,
					-0.6915199160575867
				},
				{
					0.4633333333333333,
					-1.7195658683776855,
					0.05486297607421875,
					-0.2436809539794922,
					-0.18127617239952087,
					0.6776824593544006,
					-0.0020141014829277992,
					-0.7126579880714417
				}
}

--Saltzpyre
local tmp = Weapons.dual_wield_axe_falchion_template
tmp.actions.action_one.light_attack_bopp.additional_critical_strike_chance = 0
tmp.actions.action_one.light_attack_bopp.hit_mass_count = NONE
tmp.dodge_count = 4
tmp.buffs.change_dodge_distance.external_optional_multiplier = 1.2
tmp.buffs.change_dodge_speed.external_optional_multiplier = 1.2

local tmp = Weapons.one_hand_falchion_template_1
tmp.dodge_count = 4
tmp.max_fatigue_points = 6
tmp.actions.action_one.heavy_attack.damage_profile = "medium_slashing_smiter_1h"
tmp.actions.action_one.heavy_attack_2.damage_profile = "medium_slashing_smiter_1h"
tmp.actions.action_one.light_attack_down.damage_profile = "medium_slashing_smiter_1h"
tmp.actions.action_one.light_attack_bopp.hit_mass_count = LINESMAN_HIT_MASS_COUNT
tmp.actions.action_one.heavy_attack_2.allowed_chain_actions[1].sub_action = "default_down"

local tmp = Weapons.one_handed_flail_template_1
tmp.actions.action_one.light_attack_right.hit_mass_count = TANK_HIT_MASS_COUNT
tmp.actions.action_one.light_attack_left.hit_mass_count = TANK_HIT_MASS_COUNT
tmp.actions.action_one.light_attack_bopp.anim_event = "attack_swing_down_right"
tmp.actions.action_one.light_attack_bopp.damage_profile = "light_blunt_smiter"

local tmp = Weapons.two_handed_billhooks_template
tmp.dodge_count = 3
tmp.buffs.change_dodge_distance.external_optional_multiplier = 1.15
tmp.buffs.change_dodge_speed.external_optional_multiplier = 1.15

--Sienna
local tmp = Weapons.one_handed_daggers_template_1
tmp.dodge_count = 6

local tmp = Weapons.one_handed_flails_flaming_template
tmp.actions.action_one.default_right.allowed_chain_actions[4].sub_action = "default_charge_2"

local tmp = DamageProfileTemplates.flaming_flail_explosion.default_target
tmp.dot_template_name = nil
tmp.power_distribution.attack = 0.1

local tmp = DamageProfileTemplates.flaming_flail_explosion_glance.default_target
tmp.power_distribution.attack = 0.1

local tmp = Weapons.one_handed_hammer_wizard_template_1
tmp.dodge_count = 4
tmp.max_fatigue_points = 6
tmp.actions.action_one.heavy_attack.damage_profile = "medium_blunt_smiter_2h_hammer"
tmp.actions.action_one.heavy_attack.anim_time_scale = 0.9*1.3
tmp.actions.action_one.heavy_attack.range_mod = 1.37
tmp.actions.action_one.heavy_attack_left.range_mod = 1.37
tmp.actions.action_one.heavy_attack_left.anim_time_scale = 0.9*1.3
tmp.actions.action_one.heavy_attack_right_up.range_mod = 1.37
tmp.actions.action_one.heavy_attack_right_up.anim_time_scale = 0.9*1.3
tmp.actions.action_one.light_attack_left.range_mod = 1.37
tmp.actions.action_one.light_attack_left.buff_data[1].external_multiplier = 0.8
tmp.actions.action_one.light_attack_right.range_mod = 1.37
tmp.actions.action_one.light_attack_right.buff_data[1].external_multiplier = 0.8
tmp.actions.action_one.light_attack_left.anim_time_scale = 0.9*1.3
tmp.actions.action_one.light_attack_last.damage_profile = "light_blunt_smiter"
tmp.actions.action_one.light_attack_last.range_mod = 1.37
tmp.actions.action_one.light_attack_last.buff_data[1].external_multiplier = 0.8
tmp.actions.action_one.light_attack_upper.damage_profile = "light_blunt_smiter" 
tmp.actions.action_one.light_attack_upper.range_mod = 1.37 
tmp.actions.action_one.light_attack_upper.buff_data[1].external_multiplier = 1.15
tmp.actions.action_one.light_attack_upper.anim_time_scale = 0.9*1.4
tmp.actions.action_one.light_attack_bopp.range_mod = 1.37
tmp.actions.action_one.light_attack_bopp.anim_time_scale = 0.9*1.2

local tmp = PowerLevelTemplates
tmp.armor_modifier_tank_spiked_M.attack = { 1.3, 0.8, 1.3, 1.3, 1 }
tmp.critical_strike_tank_spiked_M.attack_armor_power_modifer = { 1.3, 1 , 1.3, 1.3, 1.3 }

--Ranged
local tmp = Weapons.handgun_template_1
tmp.ammo_data.reload_time = 1.5
tmp.ammo_data.max_ammo = 16

local tmp = Weapons.longbow_empire_template
tmp.actions.action_two.default.aim_zoom_delay = 2
tmp.actions.action_two.default.buff_data[1].external_multiplier = 0.25

local tmp = DamageProfileTemplates
tmp.shot_sniper.cleave_distribution.attack = 0.3
tmp.shot_sniper.cleave_distribution.impact = 0.3

local tmp = Weapons.brace_of_drakefirepistols_template_1
tmp.actions.action_one.shoot_charged.overcharge_type = "spear_2"
tmp.buffs.change_dodge_distance.external_optional_multiplier = 1
tmp.buffs.change_dodge_speed.external_optional_multiplier = 1

local tmp = DamageProfileTemplates
tmp.throwing_axe.armor_modifier_near.attack = {1, 0.8, 1.3, 1.3, 0.75, 0.25}
tmp.throwing_axe.critical_strike.attack_armor_power_modifer = { 1, 1, 1.3, 1.3, 0.75, 0.5}
tmp.throwing_axe_charged.armor_modifier_near.attack = {1, 0.8, 1.3, 1.3, 0.75, 0.25}
tmp.throwing_axe_charged.critical_strike.attack_armor_power_modifer = {1, 1, 1.3, 1.3, 0.75, 0.5}	

local tmp = DamageProfileTemplates
tmp.arrow_carbine.armor_modifier_near.attack = {1, 0.5, 1.3, 1, 1, 0}
tmp.arrow_carbine.armor_modifier_far.attack = {1, 0.5, 1.3, 1, 1, 0}
tmp.arrow_carbine.critical_strike.attack_armor_power_modifier = {1, 0.5, 1, 1, 1, 0.5}
tmp.arrow_carbine.cleave_distribution.attack = 0.3
tmp.arrow_carbine.cleave_distribution.impact = 0.3
tmp.arrow_machinegun.cleave_distribution.attack = 0.2
tmp.arrow_machinegun.cleave_distribution.impact = 0.2

local tmp = Weapons.repeating_pistol_template_1
tmp.actions.action_one.bullet_spray.hit_mass_count = LINESMAN_HIT_MASS_COUNT

local tmp = DamageProfileTemplates
tmp.shot_machinegun_shotgun.critical_strike.attack_armor_power_modifer = { 1, 0.25, 1, 1, 1, 0.175}

local tmp = Weapons.repeating_crossbow_template_1
tmp.ammo_data.max_ammo = 45
tmp.ammo_data.reload_time = 4
tmp.dodge_count = 3

local tmp = DamageProfileTemplates
tmp.crossbow_bolt_repeating.cleave_distribution.attack = 0.25
tmp.crossbow_bolt_repeating.cleave_distribution.impact = 0.25

local tmp = Weapons.staff_blast_beam_template_1
tmp.actions.action_two.default.overcharge_interval = 0.1
tmp.actions.action_one.shoot_charged.overcharge_type = "spear"
tmp.actions.action_two.default.allowed_chain_actions[1].start_time = 0
tmp.actions.action_one.shoot_charged.allowed_chain_actions[1].start_time = 0.3

------------------------------------------------------------------------------------------------------------------------------
--NewDamageProfileTemplates
NewDamageProfileTemplates.one_hand_axe_light_1 = {
    armor_modifier = {
        attack = {
            1.25,
            0.72,
            2.5,
            1,
            0.75,
            0.6
        },
        impact = {
            1,
            0.5,
            1,
            1,
            0.75,
            0.25
        }
    },
    critical_strike = {
        attack_armor_power_modifer = {
            1.25,
            0.72,
            2.75,
            1,
            1
        },
        impact_armor_power_modifer = {
            1,
            1,
            1,
            1,
            1
        }
    },
    charge_value = "light_attack",
    cleave_distribution = {
        attack = 0.075,
        impact = 0.075
    },
    default_target = {
        boost_curve_type = "smiter_curve",
        attack_template = "slashing_smiter",
        power_distribution = {
            attack = 0.25,
            impact = 0.175
        }
    },
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
}
NewDamageProfileTemplates.one_hand_sword_light_1 = {
	armor_modifier = {
		attack = {
			1,
			0,
			2,
			1,
			1
		},
		impact = {
			1,
			0.3,
			0.5,
			1,
			1
		}
	},
	critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
    charge_value = "light_attack",
    cleave_distribution = {
        attack = 0.35,
        impact = 0.2
    },
    default_target = {
        boost_curve_type = "smiter_curve",
        attack_template = "slashing_smiter",
        power_distribution = {
            attack = 0.075,
            impact = 0.05
        }
    },
	targets = {
		{
			boost_curve_coefficient_headshot = 2.5,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 2,
			attack_template = "light_slashing_linesman_hs",
			power_distribution = {
				attack = 0.175,
				impact = 0.1
			}
		},
		{
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient_headshot = 1,
			attack_template = "light_slashing_linesman",
			power_distribution = {
				attack = 0.125,
				impact = 0.075
			}
		}
	},
}
NewDamageProfileTemplates.one_hand_sword_light_3 = {
    armor_modifier = {
        attack = {
            1.25,
            0.65,
            2.5,
            1,
            0.75,
            0.6
        },
        impact = {
            1,
            0.5,
            1,
            1,
            0.75,
            0.25
        }
    },
    critical_strike = {
        attack_armor_power_modifer = {
            1.25,
            0.75,
            2.75,
            1,
            1
        },
        impact_armor_power_modifer = {
            1,
            1,
            1,
            1,
            1
        }
    },
    charge_value = "light_attack",
    cleave_distribution = {
        attack = 0.075,
        impact = 0.075
    },
    default_target = {
        boost_curve_type = "smiter_curve",
		boost_curve_coefficient_headshot = 2.5,
        attack_template = "slashing_smiter",
        power_distribution = {
            attack = 0.25,
            impact = 0.175
        }
    },
	targets = {
		[2] = {
			boost_curve_type = "smiter_curve",
			attack_template = "slashing_smiter",
			armor_modifier = {
				attack = {
					1,
					0.25,
					1,
					1,
					0.75
				},
				impact = {
					0.75,
					0.25,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.075,
				impact = 0.075
			}
		}
	},
}
NewDamageProfileTemplates.one_hand_sword_push_attack = {
    armor_modifier = {
		attack = {
			1,
			0,
			1.5,
			1,
			1
		},
		impact = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
    critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
    charge_value = "light_attack",
    cleave_distribution = {
        attack = 0.35,
        impact = 0.3
    },
    default_target = {
		boost_curve_type = "linesman_curve",
		attack_template = "light_slashing_linesman",
		power_distribution = {
			attack = 0.075,
			impact = 0.05
		}
	},
	targets = {
		{
			boost_curve_coefficient_headshot = 2.5,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 2,
			attack_template = "slashing_linesman",
			power_distribution = {
				attack = 0.225,
				impact = 0.15
			}
		},
		{
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient_headshot = 2.5,
			attack_template = "slashing_linesman",
			power_distribution = {
				attack = 0.125,
				impact = 0.125
			}
		},
		{
			boost_curve_type = "linesman_curve",
			attack_template = "light_slashing_linesman",
			power_distribution = {
				attack = 0.1,
				impact = 0.1
			}
		}
	},
}
NewDamageProfileTemplates.one_hand_sword_heavy_attack = {
    armor_modifier = {
		attack = {
			1,
			0.35,
			1,
			1,
			0.75
		},
		impact = {
			1,
			1,
			0.5,
			1,
			0.75
		}
	},
    critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			1,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			0.5,
			1,
			1
		}
	},
    charge_value = "heavy_attack",
    cleave_distribution = {
        attack = 0.3,
        impact = 0.8
    },
    default_target = {
		boost_curve_type = "tank_curve",
		attack_template = "light_blunt_tank",
		power_distribution = {
			attack = 0.05,
			impact = 0.05
		}
	},
	targets = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "tank_curve",
			attack_template = "blunt_tank",
			armor_modifier = {
				attack = {
					1,
					0.5,
					1,
					1,
					0.75
				},
				impact = {
					1,
					1,
					0.5,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.3,
				impact = 0.2
			}
		},
		{
			boost_curve_type = "tank_curve",
			boost_curve_coefficient_headshot = 2,
			attack_template = "blunt_tank",
			power_distribution = {
				attack = 0.1,
				impact = 0.15
			}
		},
		{
			boost_curve_type = "tank_curve",
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.075,
				impact = 0.1
			}
		}
	},
}
NewDamageProfileTemplates.one_hand_sword_wood_elf_light_1 = {
    armor_modifier = {
		attack = {
			0.8,
			0,
			2,
			1,
			1
		},
		impact = {
			0.75,
			0.3,
			0.5,
			1,
			1
		}
	},
    critical_strike = {
		attack_armor_power_modifer = {
			1,
			0.5,
			2.5,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			0.5,
			0.5,
			1,
			1
		}
	},
    charge_value = "light_attack",
    cleave_distribution = {
        attack = 0.35,
        impact = 0.2
    },
    default_target = {
		boost_curve_type = "linesman_curve",
		attack_template = "light_slashing_linesman",
		power_distribution = {
			attack = 0.075,
			impact = 0.05
		}
	},
	targets_linesman_L = {
		{
			boost_curve_coefficient_headshot = 2.5,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 2,
			attack_template = "light_slashing_linesman_hs",
			power_distribution = {
				attack = 0.175,
				impact = 0.1
			}
		},
		{
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient_headshot = 2.5,
			attack_template = "light_slashing_linesman",
			power_distribution = {
				attack = 0.125,
				impact = 0.075
			}
		}
	},
}
NewDamageProfileTemplates.one_hand_sword_wood_elf_light_3 = {
    armor_modifier = {
		attack = {
			1.2,
			0.25,
			1.5,
			1,
			0.75
		},
		impact = {
			1,
			0.25,
			1,
			1,
			0.75
		}
	},
    critical_strike = {
		attack_armor_power_modifer = {
			1.2,
			0.5,
			2,
			1,
			1
		},
		impact_armor_power_modifer = {
			1,
			1,
			1,
			1,
			1
		}
	},
    charge_value = "light_attack",
    cleave_distribution = {
        attack = 0.075,
        impact = 0.075
    },
    default_target_stab_smiter_L = {
		boost_curve_coefficient_headshot = 2,
		boost_curve_type = "smiter_curve",
		boost_curve_coefficient = 0.75,
		attack_template = "stab_smiter",
		power_distribution = {
			attack = 0.1,
			impact = 0.075
		}
	},
	targets_stab_smiter_L = {
		{
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "stab_smiter",
			armor_modifier = {
				attack = {
					1,
					0.5,
					1.5,
					1,
					0.75
				},
				impact = {
					1,
					0.5,
					1,
					1,
					0.75
				}
			},
			power_distribution = {
				attack = 0.2,
				impact = 0.1
			}
		}
	},
}