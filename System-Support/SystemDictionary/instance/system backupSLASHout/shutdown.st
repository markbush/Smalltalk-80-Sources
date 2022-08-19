shutdown
	"Shut off the low space signal so that the Vmem writer can be sure the
	system is stable while it is tracing."

	self coreLeftLimit: 0.
	self oopsLeftLimit: 0
