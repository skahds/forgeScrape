fs.inventory = {
    selection = "conveyor",
    storage = {}
}

for k, ent in pairs(fs.entities) do
    if ent.block then
        fs.inventory.storage[k] = 1
    end
end

fs.ui.addUI({name="button", scene="main", x=600, y=100, width=100, height=100})