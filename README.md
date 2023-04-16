# Mouse Movement Detection and Pattern Generation
This Python script detects the movement of the mouse in all directions and creates a pattern based on the movements. After 30 minutes of movement detection, it generates a unique ID for the pattern and prints it out in graphs.

Installation
Clone the repository or download the ZIP file and extract it to a directory.
Install the required Python packages by running pip install -r requirements.txt in the command line.
Usage
Open the command line or terminal and navigate to the directory where the script is located.
Run the script by typing python mouse_movement.py and pressing Enter.
The script will start detecting the movement of the mouse and logging it in a list.
After 30 minutes of movement detection, the script will generate a unique ID for the pattern and plot it in a graph using Matplotlib.
The graph will be saved in the same directory as pattern_<ID>.png, where <ID> is the generated ID.
Customization
You can customize the following parameters in the mouse_movement.py script:

duration: the duration of the movement detection in seconds (default is 1800 seconds or 30 minutes).
interval: the time interval between mouse position checks in seconds (default is 0.1 seconds).
threshold: the minimum distance in pixels that the mouse must move to be considered as a movement (default is 5 pixels).
min_points: the minimum number of movement points required to generate a pattern (default is 10 points).
You can also modify the code to change the graph style or save the graph in a different format or directory.

Note that LUA script uses the LuaRocks library mouse to interact with the mouse. You will need to install it using luarocks install mouse before running the script.
