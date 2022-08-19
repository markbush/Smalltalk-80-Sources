snapshotAs: imageFilePrefix thenQuit: quitIfTrue
	"Write the OT and Data of this Smalltalk out on an external file.  Answer true if the snapshot was just created."

	| height justSnapped |
	Cursor execute show.
	self logChange: '''----SNAPSHOT----'''.
	Disk == nil
		ifFalse:	"install as snapshot file and update creation time"
			[(FileStream fileNamed: imageFilePrefix, '.im') beSnapshotFile; readWrite; close].
	self releaseExternalViews.
	Transcript cr; show: 'Snapshot at: ', Time dateAndTimeNow printString.
	height _ Display height.
	DisplayScreen displayHeight: (height min: 100).  "Minimize display space on snapshot"
	Delay preSnapshot.
	Cursor wait show.
	justSnapped _ self snapshotPrimitive isNil.
	justSnapped & quitIfTrue
		ifTrue:
			[self quitPrimitive]
		ifFalse:
			[Delay postSnapshot.
			DisplayScreen displayHeight: height.
			self install].
	Cursor normal show.
	^justSnapped
