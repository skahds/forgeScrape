function class(...)
    local bases = {...}
    local new_class = {}
    new_class.__index = new_class

    -- Function to search through base classes for a method or variable
    local function searchBases(key)
        for _, base in ipairs(bases) do
            if base[key] then
                return base[key]
            end
        end
    end

    setmetatable(new_class, {
        __index = function(self, key)
            local value = searchBases(key)
            if value then
                return value
            end
        end
    })

    function new_class:new(...)
        local instance = setmetatable({}, self)
        if instance.init then
            instance:init(...)
        end
        return instance
    end

    return new_class
end