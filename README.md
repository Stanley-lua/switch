# Switch
### [Stanley](https://github.com/Wolf2789/Stanley) package with switch statement in Lua.

## Usage:
```lua
local value = 'val2'
local result = switch(value, {
    'default value',
    val1 = 'result 1',
    val2 = function() return 'result ' .. (1 + 1) end,
    default = 'this overwrites previous default value'
})
print(result)
--[[ output will be:
result 2
]]
```
