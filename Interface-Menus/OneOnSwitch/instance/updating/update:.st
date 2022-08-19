update: aOneOnSwitch
	"Does nothing if aOneOnSwitch is identical to this object.  If it is not, this
	object is turned off.  Is sent by the connection (an Object) when some related
	OneOnSwitch (possibly this one) has changed.  This allows a group of related
	OneOnSwitches to maintain the constraint that at most one will be on at any
	time. "

	self ~~ aOneOnSwitch ifTrue: [self turnOff]
