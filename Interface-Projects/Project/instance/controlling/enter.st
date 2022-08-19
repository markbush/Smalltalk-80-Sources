enter
	"The user has chosen to change the context of the workspace to be that of
	the receiver.  Change the ChangeSet, Transcript, and collection of scheduled
	views accordingly."

	Smalltalk newChanges: projectChangeSet.
	CurrentProject _ self.
	TextCollector newTranscript: projectTranscript.
	ControlManager newScheduler: projectWindows
