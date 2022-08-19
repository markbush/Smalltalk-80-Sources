swap: i with: j
	| t |
	t _ self basicAt: i.
	self basicAt: i put: (self basicAt: j).
	self basicAt: j put: t
