selectTrue
	"Take the action, if one, associated with selecting yes or true."
	actionTaken _ true.
	trueAction notNil ifTrue: [trueAction value]
