cascadeReceiver
	"nil out rcvr (to indicate cascade) and return what it had been"

	| rcvr |
	rcvr _ receiver.
	receiver _ nil.
	^rcvr
