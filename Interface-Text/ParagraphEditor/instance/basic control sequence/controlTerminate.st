controlTerminate
	super controlTerminate.
	self closeTypeIn ifTrue: [startBlock _ stopBlock copy].
	"so leaving and entering window won't select last type-in"
