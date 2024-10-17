-- the ui lib used is inky, fs.ui.inky is inky
fs.ui.inky = require("builtin_mods.Inky")

fs.ui.scene   = {
    main = fs.ui.inky.scene()
}

fs.ui.pointer = fs.ui.inky.pointer(fs.ui.scene.main)