with: firstObject with: secondObject
	"Answer a new instance of me containing the two arguments as elements."

	| newCollection |
	newCollection _ self new.
	newCollection add: firstObject.
	newCollection add: secondObject.
	^newCollection
