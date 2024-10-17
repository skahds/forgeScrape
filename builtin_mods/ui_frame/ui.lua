-- the ui lib used is inky, fs.ui.inky is inky
fs.ui.inky = require("builtin_mods.Inky")

fs.ui.scene   = fs.ui.inky.scene()

fs.ui.pointer = {}
fs.ui.pointer = fs.ui.inky.pointer(fs.ui.scene)


ui = class()
function ui:init(args)
    entity.init(self, args)
end

function ui:draw()
    if self.render then
        self:render(self.x, self.y, self.width, self.height)
    end
end