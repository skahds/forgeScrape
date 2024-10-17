-- the ui lib used is inky, fs.ui.inky is inky
fs.ui.inky = require("builtin_mods.Inky")

fs.ui.scene   = fs.ui.inky.scene()

fs.ui.pointer = {}
fs.ui.pointer = fs.ui.inky.pointer(fs.ui.scene)




-- ui = class()
-- function ui:init(args)
--     self.x = args.x
--     self.y = args.y
--     self.width = args.width
--     self.height = args.height
--     self.inky = fs.ui.elements[args.button]
-- end

-- function ui:draw()
--     if self.inky.render then
--         self.inky:render(self.x, self.y, self.width, self.height)
--     end
-- end