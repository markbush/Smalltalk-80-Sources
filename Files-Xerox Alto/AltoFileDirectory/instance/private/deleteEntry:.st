deleteEntry: file
	"called only by Delete: and rename:newName:
	read and save"

	| p nextFile |
	p _ dirFile position.
	nextFile _ self next.
	dirFile position: p.

	"delete it from directory (turn off bit in entry length word)"
	p _ dirFile nextWord bitAnd: Dfmask - 1.
	dirFile skip: -2.
	dirFile readWrite.
	dirFile nextWordPut: p.
	dirFile readOnly.
	dirFile skip: -2.
	^nextFile
