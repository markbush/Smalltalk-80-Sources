reinitialize
	"Reset the receiver to its initial status."
	page == nil ifTrue: [page _ self allocatePage].
	self size: 0
