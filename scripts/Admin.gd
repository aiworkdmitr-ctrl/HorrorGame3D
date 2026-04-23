extends Node

# Admin panel script for Horror Game 3D

# Function to open the admin panel
func open_admin_panel():
    # Code to display the admin panel
    print("Admin panel opened")

# Function to close the admin panel
func close_admin_panel():
    # Code to hide the admin panel
    print("Admin panel closed")

# Function to execute admin commands
func execute_command(command: String):
    match command:
        "ban_player":
            # Code to ban a player
            print("Player banned")
        "kick_player":
            # Code to kick a player
            print("Player kicked")
        _:
            print("Unknown command")