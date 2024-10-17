fs.inventory = {
    selection = "conveyor",
    storage = {}
}

for k, ent in pairs(fs.entities) do
    if ent.block then
        fs.inventory.storage[k] = 1
    end
end


fs.ui.defineUI("builtin_mods.inventory.base_inventory", "display_base")



