forgetDoIts
	"get rid of old DoIt methods"

	Smalltalk allBehaviorsDo:
		[:class |
		class removeSelectorSimply: #DoIt;
		removeSelectorSimply: #DoItIn:]

	"Smalltalk forgetDoIts"
