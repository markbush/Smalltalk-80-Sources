fileOutClassChanges: class on: stream
	"Write out class changes.  i.e.  new class, definition, comment, renaming."

	(self atClass: class includes: #add) ifTrue:
		[stream cr.
		class fileOutOn: stream.
		stream cr.
		^self atClass: class add: #add  "fileOut clears this!"].

	(self atClass: class includes: #rename) ifTrue:
		[stream nextChunkPut: (self oldNameFor: class), ' rename: #', class name; cr].

	(self atClass: class includes: #change) ifTrue:
		[stream emphasis: 5; nextChunkPut: class definition; cr; emphasis: 1].

	(self atClass: class includes: #comment) ifTrue:
		[class organization putCommentOnFile: stream
			numbered: nil moveSource: false.
		stream cr].

	(self atClass: class includes: #reorganize) ifTrue:
		[class fileOutOrganizationOn: stream.
		stream cr]
