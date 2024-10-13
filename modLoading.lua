-- this is made by chatgipity, im not smart enough to use love.filesystem

local function requireFolder(folder)
    -- Get the list of items (files and folders) in the folder
    local items = love.filesystem.getDirectoryItems(folder)

    for _, item in ipairs(items) do
        local fullPath = folder .. "/" .. item
        local info = love.filesystem.getInfo(fullPath)

        if info.type == "file" and item:match("%.lua$") then
            -- Strip ".lua" and replace "/" with "." for proper require syntax
            local requirePath = fullPath:gsub("%.lua$", ""):gsub("/", ".")
            require(requirePath)
        elseif info.type == "directory" then
            -- Recursively require files in subfolders
            requireFolder(fullPath)
        end
    end
end

-- Call the function for the folder you want to load files from
requireFolder("builtin_mods")  -- Replace "scripts" with the folder you want to load