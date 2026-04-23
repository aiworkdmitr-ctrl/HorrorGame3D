extends Node

# Settings menu script for Horror Game 3D

class_name SettingsMenu

# Settings variables
var volume : float = 1.0
var brightness : float = 1.0
var sensitivity : float = 1.0
var fullscreen : bool = true

# Called when the node enters the scene tree for the first time.
func _ready():
    load_settings()

# Load settings from a file or default values
func load_settings():
    # Logic to load settings from a file
    pass  # Placeholder for loading logic

# Save settings to a file
func save_settings():
    # Logic to save settings to a file
    pass  # Placeholder for saving logic

# Function to toggle fullscreen
func toggle_fullscreen():
    fullscreen = !fullscreen
    # Apply fullscreen logic here
