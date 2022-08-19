turnOn
	"Does nothing if it is already on.  If it is not, it is set to 'on', its dependents
	are 	notified of the change, its connection is notified, and its action is
	executed."

	self isOff
		ifTrue:
			[on _ true.
			self changed.
			self notifyConnection.
			self doAction: onAction]
