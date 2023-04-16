import time
import uuid
import pyautogui
import matplotlib.pyplot as plt

# Set the duration of movement detection to 30 minutes
duration = 30 * 60

# Get a unique ID for this session
session_id = uuid.uuid4()

# Initialize lists to store the mouse coordinates
x_values = []
y_values = []

# Get the starting position of the mouse
start_x, start_y = pyautogui.position()

# Get the starting time of the movement detection
start_time = time.time()

# Loop until the duration is reached
while time.time() - start_time < duration:
    # Get the current position of the mouse
    current_x, current_y = pyautogui.position()
    
    # Check if the mouse has moved
    if current_x != start_x or current_y != start_y:
        # Store the new mouse coordinates
        x_values.append(current_x)
        y_values.append(current_y)
        
        # Update the starting position of the mouse
        start_x, start_y = current_x, current_y
        
    # Wait for 0.1 seconds before checking again
    time.sleep(0.1)
    
# Generate a unique filename for the graph
filename = f'movement_pattern_{session_id}.png'

# Plot the mouse movement as a line graph
plt.plot(x_values, y_values)
plt.title('Mouse Movement Pattern')
plt.xlabel('X Coordinate')
plt.ylabel('Y Coordinate')
plt.savefig(filename)

# Print out the filename of the generated graph
print(f'Movement pattern graph saved as {filename}')
