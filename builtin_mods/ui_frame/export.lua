fs.ui = {}
world.ui = {}

function fs.ui.addUI(args)
    fs.addToWorld(ui:new(args), "ui")
end

function fs.defineUI(func)
    fs.ui.inky.defineElement(func)
end
