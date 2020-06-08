local mod = get_mod("Rebalance")

local function add_buff(buff_name, buff_data) 
    local new_buff = {
        buffs = {
            merge({ name = buff_name }, buff_data),
        },
    }
    BuffTemplates[buff_name] = new_buff
    local index = #NetworkLookup.buff_templates + 1
    NetworkLookup.buff_templates[index] = buff_name
    NetworkLookup.buff_templates[buff_name] = index
end

--Heroic Intervention
ProcFunctions.heal_assisted_and_self_on_assist = function (player, buff, params)
    local player_unit = player.player_unit
    local assisted_unit = params[1]
    local buff_name = "traits_melee_shield_on_assist_buff"
    local buff_template_name_id = NetworkLookup.buff_templates[buff_name]
    local network_manager = Managers.state.network
    local network_transmit = network_manager.network_transmit

    if Unit.alive(player_unit) and Managers.player.is_server then
        local unit_object_id = network_manager:unit_game_object_id(player_unit)
                    
        if Managers.player.is_server then
            local buff_extension = ScriptUnit.has_extension(player_unit, "buff_system")
            buff_extension:add_buff(buff_name, {attacker_unit = player_unit})
            network_transmit:send_rpc_clients("rpc_add_buff", unit_object_id, buff_template_name_id, unit_object_id, 0, false)
        else
            network_transmit:send_rpc_server("rpc_add_buff", unit_object_id, buff_template_name_id, unit_object_id, 0, true)
        end

        if Unit.alive(assisted_unit) then
            local unit_object_id = network_manager:unit_game_object_id(assisted_unit)

            if Managers.player.is_server then
                local buff_extension = ScriptUnit.has_extension(assisted_unit, "buff_system")
                buff_extension:add_buff(buff_name, {attacker_unit = assisted_unit})
                network_transmit:send_rpc_clients("rpc_add_buff", unit_object_id, buff_template_name_id, unit_object_id, 0, false)
            else
                network_transmit:send_rpc_server("rpc_add_buff", unit_object_id, buff_template_name_id, unit_object_id, 0, true)
            end
        end
    end            
end
add_buff("traits_melee_shield_on_assist_buff", {
    max_stacks = 1,
    icon = "melee_shield_on_assist",
	multiplier = 1.1,
	stat_buff = "power_level",
    duration = 5,
})

--Off Balance
ProcFunctions.block_increase_enemy_damage_taken = function (player, buff, params)
    local attacking_unit = params[1]
    local player_unit = player.player_unit
    local buff_name = "block_increase_enemy_damage_taken_buff"
    local buff_template_name_id = NetworkLookup.buff_templates[buff_name]
    local network_manager = Managers.state.network
    local network_transmit = network_manager.network_transmit

    if Unit.alive(attacking_unit) then
        local attacker_buff_extension = ScriptUnit.has_extension(attacking_unit, "buff_system")

        if attacker_buff_extension then
            attacker_buff_extension:add_buff("defence_debuff_enemies")
        end

        local unit_object_id = network_manager:unit_game_object_id(player_unit)
                    
        if Managers.player.is_server then
            local buff_extension = ScriptUnit.has_extension(player_unit, "buff_system")
            buff_extension:add_buff(buff_name, {attacker_unit = player_unit})
            network_transmit:send_rpc_clients("rpc_add_buff", unit_object_id, buff_template_name_id, unit_object_id, 0, false)
        else
            network_transmit:send_rpc_server("rpc_add_buff", unit_object_id, buff_template_name_id, unit_object_id, 0, true)
        end
    end
end
add_buff("block_increase_enemy_damage_taken_buff", {
    max_stacks = 1,
    icon = "melee_increase_damage_on_block",
	multiplier = 0.1,
	stat_buff = "critical_strike_chance",
    duration = 5,
})

--Opportunist
WeaponTraits.buff_templates.traits_melee_counter_push_power = {
    buffs = {
        {
            max_display_multiplier = 0.4,
            name = "traits_melee_counter_push_power",
            event_buff = true,
            buff_func = function (player, buff, params)
                local player_unit = player.player_unit
                local hit_unit = params[1]
                local is_dummy = Unit.get_data(hit_unit, "is_dummy")
            
                if Unit.alive(player_unit) and (is_dummy or Unit.alive(hit_unit)) and Managers.player.is_server then
                    local buff_extension = ScriptUnit.extension(hit_unit, "buff_system")
            
                    if buff_extension then
                        buff_extension:add_buff("traits_melee_counter_push_power_buff")
                    end
                end
            end,
            event = "on_stagger",
            display_multiplier = 0.2
        }
    }
}
add_buff("traits_melee_counter_push_power_buff", {
    buffs = {
        {
            refresh_durations = true,
            name = "traits_melee_counter_push_power_buff",
            stat_buff = "unbalanced_damage_taken",
            max_stacks = 1,
            duration = 2,
            bonus = 0.1
        }
    }
})

--Parry
WeaponTraits.buff_templates.traits_melee_timed_block_cost = {
    buffs = {
        {
            stat_buff = "timed_block_cost",
            multiplier = -1,
        },
		{
            event = "on_timed_block",
            buff_to_add = "traits_melee_timed_block_cost_buff",
            event_buff = true,
            buff_func = "add_buff"
        }
    }
}
add_buff("traits_melee_timed_block_cost_buff", {
    buffs = {
        {
            stat_buff = "critical_strike_chance",
            event = "on_hit",
            event_buff = true,
            buff_func = "dummy_function",
            remove_on_proc = true,
            icon = "melee_timed_block_cost",
            dormant = true,
            max_stacks = 1
        }
    }
})

--Resourceful Ones
WeaponTraits.buff_templates.traits_reduce_cooldown_on_crit = {
    buffs = {
        {
            event_buff = true,
            buff_func = "reduce_activated_ability_cooldown",
            event = "on_critical_hit",
            dormant = true,
            bonus = 1
        }
    }
}

--[[Inspirational Shot
WeaponTraits.buff_templates.traits_ranged_restore_stamina_headshot = {
    buffs = {
        {
            max_stacks = 1,
            dormant = true,
            stat_buff = "coop_stamina"
        }
    }
}--]]

--Hand of Shallaya
WeaponTraits.buff_templates.trait_necklace_heal_self_on_heal_other = {
    buffs = {
        {
            multiplier = 0.2,
            name = "trait_necklace_heal_self_on_heal_other",
            event_buff = true,
            buff_func = "heal_other_players_percent_at_range",
            event = "on_healed_consumeable",
            range = 10
        }
    }
}