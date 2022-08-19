forkAt: priority
	"Create and schedule a process running the code in the receiver.
	The priority of the process is the argument, priority."

	| forkedProcess |
	forkedProcess _ self newProcess.
	forkedProcess priority: priority.
	forkedProcess resume
