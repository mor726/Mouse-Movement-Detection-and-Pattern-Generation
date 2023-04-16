-- Load the library to interact with the operating system
local os = require("os")

-- Load the library to interact with the mouse
local mouse = require("mouse")

-- Define the time limit in seconds
local time_limit = 1800 -- 30 minutes

-- Define the time interval to check for movement in seconds
local check_interval = 1

-- Define the threshold for movement in pixels
local movement_threshold = 5

-- Generate a unique ID for this run
local id = os.time()

-- Keep track of the mouse position
local last_position = mouse.position()

-- Keep track of the time since last movement
local time_since_movement = 0

-- Create a table to store the movement data
local movement_data = {}

-- Loop until the time limit is reached
while time_since_movement < time_limit do
    -- Wait for the check interval
    os.sleep(check_interval)
    
    -- Get the current mouse position
    local current_position = mouse.position()
    
    -- Calculate the distance between the current and last position
    local distance = math.sqrt((current_position.x - last_position.x)^2 + (current_position.y - last_position.y)^2)
    
    -- If the distance is greater than the threshold, record the movement and reset the time since last movement
    if distance > movement_threshold then
        table.insert(movement_data, distance)
        time_since_movement = 0
    else
        time_since_movement = time_since_movement + check_interval
    end
    
    -- Update the last position
    last_position = current_position
end

-- Print the movement data in a graph
print("Movement data for ID #"..id)
for i, distance in ipairs(movement_data) do
    print(i.."\t"..string.rep("*", distance))
end
