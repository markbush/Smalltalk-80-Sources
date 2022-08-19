recoverFile: aFileStream
	"Recover all the changes from a .changes file since the last snapshot"
	| position |
	position _ self findLast: '

''----SNAPSHOT----''!
' in: aFileStream.
	position isNil
		ifTrue: [position _ 0].
	aFileStream position: position.
	self scanFile: aFileStream
