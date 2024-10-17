fs.ui = {
    elements = {}
}
world.ui = {}

--important for args, require name and scene
function fs.ui.addUI(args)
    local newElement = fs.ui.elements[args.name](fs.ui.scene[args.scene])
    fs.addToWorld(newElement, "ui")
end

function fs.defineUI(path, name)
    fs.ui.elements[name] = require(path)
end
