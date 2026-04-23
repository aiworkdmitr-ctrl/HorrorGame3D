extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
    # Connect signals or set up initial states
    pass

# Function to handle the start button presses
func _on_StartButton_pressed():
    # Logic to start the game
    print("Game Started!")

# Function to handle the quit button presses
func _on_QuitButton_pressed():
    # Logic to quit the game
    get_tree().quit()