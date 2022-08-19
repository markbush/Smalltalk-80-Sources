selectAction
	"Evaluate the receiver's assigned action block, if any, with the answer as the
	block argument."
	actionBlock notNil ifTrue: [actionBlock value: contents]
