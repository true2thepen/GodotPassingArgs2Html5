extends MarginContainer

var arguments = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	var myLabel
	var childLabel
	#myLabel = Label.new()
	myLabel = 'Args' + '\n'
	for argument in OS.get_cmdline_args():
		# Parse valid command-line arguments into a dictionary
		if argument.find("=") > -1:
			var key_value = argument.split("=")
			arguments[key_value[0].lstrip("--")] = key_value[1]
			 
			myLabel = myLabel + key_value[0].lstrip("--") + ": "
			myLabel = myLabel + arguments[key_value[0].lstrip("--")] +'\n'
			print(myLabel)
	childLabel = get_tree().current_scene.find_node('Label')
	childLabel.text = myLabel
