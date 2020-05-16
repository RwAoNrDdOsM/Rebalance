return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`Rebalance` mod must be lower than Vermintide Mod Framework in your launcher's load order.")

		new_mod("Rebalance", {
			mod_script       = "scripts/mods/Rebalance/Rebalance",
			mod_data         = "scripts/mods/Rebalance/Rebalance_data",
			mod_localization = "scripts/mods/Rebalance/Rebalance_localization",
		})
	end,
	packages = {
		"resource_packages/Rebalance/Rebalance",
	},
}
