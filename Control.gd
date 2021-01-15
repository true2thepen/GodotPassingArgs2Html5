extends MarginContainer

var arguments = {}

# Called when the node enters the scene tree for the first time.
func _ready():
	var myArgList
	
	#myLabel = Label.new()
	
	for argument in OS.get_cmdline_args():
		# Parse valid command-line arguments into a dictionary
		if argument.find("=") > -1:
			var key_value = argument.split("=")
			arguments[key_value[0].lstrip("--")] = key_value[1]
			myArgList = 'Args' + '\n' 
			myArgList = myArgList + key_value[0].lstrip("--") + ": "
			myArgList = myArgList + arguments[key_value[0].lstrip("--")]
			print(myArgList)


