makeFormEditorMenu
	| button buttonCache form aSwitchView aSwitchController|
	"Now get those forms into the subviews"
	self makeButton: 1.					"form source"
	self makeConnections: (2 to: 6).		"tools"
	self makeConnections: (7 to: 10).		"modes"
	self makeButton: 11.					"filing in"
	self makeButton: 12.					"bit editing"
	self makeColorConnections: (13 to: 17).		"colors"
	self makeGridSwitch: 18.					"toggle x"
	self makeGridSwitch: 19.					"toggle y"
	self makeButton: 20.					"setting grid"
	self makeButton: 21					"filing out"
