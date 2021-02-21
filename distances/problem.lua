--[[contributed by CntKillMe

Input: points (an array of Vector3), #points >= 0, all points are unique.

Output: the distance between the closest pair of points, or 0 if there are less than 2 points.

Example:
	if points = { Vector3.new(0, 5, 10), Vector3.new(10, 10, 10), Vector3.new(0, 5, 7) },
	then minimum_distance(points) yields 3,
	because the distance between the first two points is ~11.180340,
	and the distance between the first and third point is 3,
	and the distance between the second and third point is ~11.575837.
]]

local mkTests,testCases = table.unpack(require(script.Parent.testgen))

-- Only modify this function!
-- Bonus challenge ((Optional)) : solve this in O(n log n) time.
local function minimum_distance(points)
    return 0
end

--testing template
local function formatV3Arr(a)
    local r = {}
    for i, v in ipairs(a) do
        r[i] = "("..tostring(v)..")" 
    end
    return "{"..table.concat(r,", ").."}"
end

for _,points in ipairs(mkTests()) do
    local distance = minimum_distance(points) 
    -- ...
end

for input, output in pairs(testCases) do
    local res = minimum_distance(input)
    assert(math.abs(res - output) < 1e-6, ("for (%s), expected %f, got %f"):format(
        formatV3Arr(input),
        output,
        res
    ))
end
