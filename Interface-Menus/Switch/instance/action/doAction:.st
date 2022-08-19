doAction: anAction
	"Execute anAction if it is non-nil."

	anAction == nil ifFalse: [anAction value]
