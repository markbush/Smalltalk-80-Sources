moveChangesTo: newFile
	"Used in the process of condensing changes, this message requests that the source
	code of all methods of the receiver that have been changed should be moved to
	newFile."

	| changes |
	self organization moveChangedCommentToFile: newFile numbered: 2.
	changes _ methodDict keys select: [:sel | (methodDict at: sel) fileIndex > 1].
	self fileOutChangedMessages: changes
		on: newFile
		moveSource: true
		toFile: 2
