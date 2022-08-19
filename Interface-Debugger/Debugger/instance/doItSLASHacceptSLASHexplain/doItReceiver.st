doItReceiver
	"Answer the receiver in which to evaluate code pane doIts."
	context == nil ifTrue: [^ nil].
	^ context receiver
