fs.ui = {
    elements = {}
}
world.ui = {}


--with these
--important for args, require name and scene
function fs.ui.addUI(args)
    local newElement = fs.ui.elements[args.name](fs.ui.scene[args.scene])
    newElement.props.linkGroup = args.linkgroup or "basic_ui"
    local fullTable = {
        element=newElement,
        x=args.x,
        y=args.y,
        height=args.height,
        width=args.width,
    }
    fs.addToWorld(fullTable, "ui")
    return world.ui[#world.ui]
end

function fs.ui.defineUI(path, name)
    fs.ui.elements[name] = require(path)
end
