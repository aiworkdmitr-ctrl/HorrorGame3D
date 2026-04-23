extends Node

# Item Collection Script for Horrorgame 3D

var items_collected = []

# Called when the player collides with an item
func _on_item_collected(item):
    if item not in items_collected:
        items_collected.append(item)
        # Handle item collection logic here (e.g., update UI, play sound)
        print("Item collected: " + item)

# Method to check if an item has been collected
func is_item_collected(item):
    return item in items_collected
