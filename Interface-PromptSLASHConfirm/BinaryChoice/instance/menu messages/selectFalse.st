selectFalse
	"Take the action, if one, associated with selecting no or false."
	actionTaken _ true.
	falseAction notNil ifTrue: [falseAction value]
