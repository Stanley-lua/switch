--[[ 'switch' statement in Lua
    local result = switch(value, {
        val1 = 'result 1',
        val2 = function() return 'result ' .. (1 + 1) end,
        [1] = 'value 1'
    })
]]
return function(value, cases)
    if cases then
        local match = cases[value] or cases.default or cases[1]
        if match ~= nil then
            local result = nil
            if type(match) == 'function' then
                result = { match() }
                if #result == 1 then
                    result = result[1]
                end
            else
                result = match
            end
            if result == nil then
                return true
            end
            return result
        end
    end
    return false
end