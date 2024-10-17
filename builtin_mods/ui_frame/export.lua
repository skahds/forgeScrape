fs.ui = {
    elements = {}
}
world.ui = {}

function fs.ui.addUI(args)
    local newElement = fs.ui.elements[args.name](fs.ui.scene)
    fs.addToWorld(newElement, "ui")
end

function fs.defineUI(path, name)
    fs.ui.elements[name] = require(path)
end
