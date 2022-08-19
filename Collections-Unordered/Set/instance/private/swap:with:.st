swap: oneElement with: otherElement
	| save |
	save _ self basicAt: oneElement.
	self basicAt: oneElement put: (self basicAt: otherElement).
	self basicAt: otherElement put: save
