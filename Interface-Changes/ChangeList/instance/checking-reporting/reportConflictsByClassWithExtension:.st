reportConflictsByClassWithExtension: extension
	"report conflicts among the changes"
	self reportChangesOn: nil extension: extension.
	^self finishReportOn: (Disk file: 'DoIts', extension)
