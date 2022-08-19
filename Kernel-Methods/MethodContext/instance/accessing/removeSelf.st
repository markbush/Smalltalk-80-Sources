removeSelf
	"Nil the receiver pointer and answer the former value."

	| tempSelf |
	tempSelf _ receiver.
	receiver _ nil.
	^tempSelf
