switch
	"Change the state of the receiver from 'on' to 'off' or from 'off' to 'on' (see
	Switch|turnOn, Switch|turnOff)."

	self isOn
		ifTrue: [self turnOff]
		ifFalse: [self turnOn]
