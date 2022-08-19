update: aParameter
	"Normally sent by the receiver's model (via 'View|update') in order to notify the
	receiver that the state of the model has changed.
	View|update: should be redefined in a subclass if some specific action is to take
	place when the model changes. A typical action that might be required is to
	redisplay the receiver."

	^self
