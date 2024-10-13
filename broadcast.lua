unpack = table.unpack or unpack

fs = {}
fs.events = {}
fs.storage = {}

---calls all event
---@param event string
---@param ... any
function fs.call(event, ...)
    if fs.events[event] then
        for i, func in ipairs(fs.events[event]) do
            func(...)
        end
    end
end

---gets called by event
---@param event string
---@param func function
function fs.on(event, func)
    if not fs.events[event] then
        fs.events[event] = {}
    end
    table.insert(fs.events[event], func)
end

---gets from fs.storage
---@param name string
---@return unknown
function fs.get(name)
    return fs.storage[name]
end

---updates fs.storage
---@param name string
---@param newVar any
function fs.updateStorage(name, newVar)
    fs.storage[name] = newVar
end