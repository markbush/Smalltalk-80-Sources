resume
	"The receiver's delay duration has expired, the process the receiver
	suspended will resume now. "

	Processor signal: nil atTime: 0.
	delayInProgress _ false.
	delaySemaphore signal
