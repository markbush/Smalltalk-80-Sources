condenseChanges
	"Move all the changes onto a compacted sources file.
		Smalltalk condenseChanges."

	| f fileName |
	f _ Disk file: 'ST80.temp'.
	f timeStamp.
	Smalltalk allBehaviorsDo: [:class | class moveChangesTo: f].
	f close.
	f readOnly.
	fileName _ (SourceFiles at: 2) name.
	(SourceFiles at: 2) close.
	SourceFiles at: 2 put: f.
	Disk removeKey: fileName.
	f file rename: fileName
