background: aBlock
	"Replace the background process with a process running the code
	in aBlock."

	BackgroundProcess == nil ifFalse: [BackgroundProcess terminate].
	BackgroundProcess _ aBlock newProcess.
	BackgroundProcess priority: SystemRockBottomPriority.
	BackgroundProcess resume
