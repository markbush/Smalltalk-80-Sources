scanFile: aFile do: aBlock
	"Evaluate aBlock with each item on the file"
	| position |
	file _ aFile.
	[file skipSeparators.
	file atEnd]
		whileFalse:
			[file peek = $!
				ifTrue:
					[file next.
					super scan: self nextChunkStream.
					self scanSpecialDo: aBlock]
				ifFalse:
					[position _ file position.
					self scanExpression: self nextChunkStream do:
						[:item | aBlock value: (item file: file position: position)]]]
