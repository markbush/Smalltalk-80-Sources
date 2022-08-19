notifyConnection
	"Send the receiver's connection (if it exists) the message 'changed: self' in order for
	the 	connection to broadcast the change to other objects connected by the
	connection. "

	self isConnectionSet ifTrue: [self connection changed: self]
