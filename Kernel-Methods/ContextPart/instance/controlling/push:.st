push: val
	"Push val on the receiver's stack."
	self at: (stackp _ stackp + 1) put: val
