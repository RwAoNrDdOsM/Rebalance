local mod = get_mod("Rebalance")

--Heroic Intervention
WeaponTraits.buff_templates.traits_melee_shield_on_assist = {
    buffs = {
        {
            event = "on_assisted_ally",
            event_buff = true,
            dormant = true,
            buff_func = "heal_assisted_and_self_on_assist"
        }
    }
}
ProcFunctions.heal_assisted_and_self_on_assist = function (player, buff, params)
    local player_unit = player.player_unit
    local assisted_unit = params[1]

    if Unit.alive(player_unit) and Managers.player.is_server then
        local heal_amount = buff.bonus

        DamageUtils.heal_network(player_unit, player_unit, heal_amount, "heal_from_proc")

        if Unit.alive(assisted_unit) then
            DamageUtils.heal_network(assisted_unit, player_unit, heal_amount, "heal_from_proc")
        end
    end
end

--Barrage
WeaponTraits.buff_templates.traits_ranged_consecutive_hits_increase_power = {
    buffs = {
        {
            event = "on_hit",
            dormant = true,
            event_buff = true,
            buff_func = "buff_consecutive_shots_damage"
        }
    }
}
ProcFunctions.buff_consecutive_shots_damage = function (player, buff, params)
    local player_unit = player.player_unit
    local hit_unit = params[1]
    local attack_type = params[2]
    local target_number = params[4]
    local hit_unit_buff_extension = ScriptUnit.has_extension(hit_unit, "buff_system")
    local player_unit_buff_extension = ScriptUnit.has_extension(player_unit, "buff_system")

    if hit_unit_buff_extension:has_buff_type("consecutive_shot_debuff") and target_number == 1 then
        player_unit_buff_extension:add_buff("consecutive_shot_buff")
    end

    hit_unit_buff_extension:add_buff("consecutive_shot_debuff")
end
WeaponTraits.buff_templates.consecutive_shot_buff = {
    buffs = {
        {
            max_stacks = 5,
            icon = "ranged_consecutive_hits_increase_power",
            stat_buff = "power_level",
            refresh_durations = true
        }
    }
}

--Inspirational Shot
WeaponTraits.buff_templates.traits_ranged_restore_stamina_headshot = {
    buffs = {
        {
            max_stacks = 1,
            dormant = true,
            stat_buff = "coop_stamina"
        }
    }
}

--Off Balance
WeaponTraits.buff_templates.traits_melee_increase_damage_on_block = {
    buffs = {
        {
            event = "on_block",
            dormant = true,
            event_buff = true,
            buff_func = "block_increase_enemy_damage_taken"
        }
    }
}
ProcFunctions.block_increase_enemy_damage_taken = function (player, buff, params)
    local attacking_unit = params[1]

    if Unit.alive(attacking_unit) then
        local attacker_buff_extension = ScriptUnit.has_extension(attacking_unit, "buff_system")

        if attacker_buff_extension then
            attacker_buff_extension:add_buff("defence_debuff_enemies")
        end
    end
end
WeaponTraits.buff_templates.traits_melee_increase_damage_on_block_proc = {
    buffs = {
        {
            stat_buff = "damage_taken",
            refresh_durations = true
        }
    }
}

--Opportunist
WeaponTraits.buff_templates.traits_melee_counter_push_power = {
    buffs = {
        {
            dormant = true,
            stat_buff = "counter_push_power"
        }
    }
}

--Swift Slaying
WeaponTraits.buff_templates.traits_melee_attack_speed_on_crit = {
    buffs = {
        {
            buff_to_add = "traits_melee_attack_speed_on_crit_proc",
            event_buff = true,
            buff_func = "add_buff",
            event = "on_critical_hit",
            dormant = true
        }
    }
}		
WeaponTraits.buff_templates.traits_melee_attack_speed_on_crit_proc = {
    buffs = {
        {
            max_stacks = 1,
            icon = "melee_attack_speed_on_crit",
            stat_buff = "attack_speed",
            refresh_durations = true
        }
    }
}		
