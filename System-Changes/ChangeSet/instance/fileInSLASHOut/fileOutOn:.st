fileOutOn: stream
	"Write out all the changes the receiver knows about."

	self isEmpty ifTrue: [self notify: 'Warning: no changes to file out'].

	(ChangeSet superclassOrder: self changedClasses asOrderedCollection) do:
		[:class |
		self fileOutChangesFor: class on: stream].
	classRemoves do:
		[:className |
		stream nextChunkPut: 'Smalltalk removeClassNamed: #', className; cr].
	reorganizeSystem ifTrue:
		[stream cr; nextPut: $!; nextChunkPut: 'SystemOrganization'; cr.
		stream nextChunkPut: SystemOrganization printString; cr; cr].
	specialDoIts do:
		[:expression |
		stream nextChunkPut: expression; cr].
