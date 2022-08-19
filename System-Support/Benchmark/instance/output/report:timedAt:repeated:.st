report: label timedAt: time repeated: numberOfTimes
	"Do all the reporting, both in the Transcript and on the output file or stream."

	| reportString |
	reportString _ self reportStringFor: label
						timedAt: time
						repeated: numberOfTimes.
	verboseTranscript
			ifTrue: [Transcript show: reportString]
			ifFalse: [Transcript show: '
[', label, ']'].
	reporting ifTrue:
		[reportStream nextPutAll: reportString.
		 fromList ifFalse: [self closeOutput: reportStream]]
