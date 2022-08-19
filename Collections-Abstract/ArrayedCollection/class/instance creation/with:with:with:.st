with: firstObject with: secondObject with: thirdObject
	"Answer a new instance of me, containing only these three objects."

	| newCollection |
	newCollection _ self new: 3.
	newCollection at: 1 put: firstObject.
	newCollection at: 2 put: secondObject.
	newCollection at: 3 put: thirdObject.
	^newCollection
