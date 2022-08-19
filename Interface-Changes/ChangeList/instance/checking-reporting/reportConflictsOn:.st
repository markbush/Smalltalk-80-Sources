reportConflictsOn: aStream
	"report conflicts among the changes"
	self reportChangesOn: aStream extension: nil.
	^self finishReportOn: aStream
