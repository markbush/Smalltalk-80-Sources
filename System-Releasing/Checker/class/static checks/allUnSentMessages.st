allUnSentMessages
	"Answer an Array of each message that is implemented by some object in the
	system but is not sent by any."


	| all anArray |
	all _ self allImplementedMessages.
	anArray _ Array new: 0.
	Cursor execute
		showWhile:
			[self allBehaviorsDo:
				[:cl |
				 cl selectors do:
					[:sel |
					(cl compiledMethodAt: sel) literals do:
						[:m | all remove: m ifAbsent: []]]].
			1 to: self specialSelectorSize do:
				[:index |
				all remove: (self specialSelectorAt: index) ifAbsent: []].
			Transcript show: all size printString.
			all do: [:sel | anArray _ anArray , (self allImplementorsOf: sel)]].
	^anArray
