fileOutChangedMessages: aSet on: aFileStream moveSource: moveSource toFile: fileIndex
	"File a description of the messages of the receiver that have been changed
	(i.e., are entered into the system ChangeSet) onto aFileStream.  If
	the boolean argument, moveSource, is true, then set the trailing bytes to the position
	of aFileStream and to fileIndex in order to indicate where to find the source code."

	| org sels |
	(org _ self organization) categories do:
		[:cat |
		sels _ (org listAtCategoryNamed: cat) select: [:sel | aSet includes: sel].
		sels size > 0
			ifTrue:
				[Transcript cr; show: self name , '>' , cat.
				self printCategoryChunk: cat on: aFileStream.
				sels do: [:sel |
						self
							printMethodChunk: sel
							on: aFileStream
							moveSource: moveSource
							toFile: fileIndex].
				aFileStream nextChunkPut: ' ']]
