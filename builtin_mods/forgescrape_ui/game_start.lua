fs.on("@load", function ()
    fs.defineUI("builtin_mods.forgescrape_ui.button", "button")
    fs.ui.addUI({name="button", scene="main", x=600, y=100, width=100, height=100})
end)