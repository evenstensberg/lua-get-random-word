#!/usr/bin/env lua

print("Please type in words seperated by , to get random word: \n")

local string_unformatted = io.read()
local n_elements = 1
local words = {}

for key in string.gmatch(string_unformatted, '([^,]+)') do
    words[n_elements] = key
    n_elements = n_elements + 1
end


--[[ Seed with current date ]]
math.randomseed(os.time())

--[[ Random word idx ]]
local rand_idx = math.random(1, n_elements)


print("Selected word: ", words[rand_idx])
