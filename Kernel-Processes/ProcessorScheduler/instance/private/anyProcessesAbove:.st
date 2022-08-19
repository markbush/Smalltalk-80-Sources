anyProcessesAbove: highestPriority
	"Do any instances of Process exist with higher priorities?"

	^(Process allInstances select: [:aProcess | aProcess priority > highestPriority]) isEmpty
