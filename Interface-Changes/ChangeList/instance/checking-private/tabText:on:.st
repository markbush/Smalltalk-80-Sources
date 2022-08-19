tabText: text on: aStream
	"report conflicts among the changes"
	| cr previous terminator |
	cr _ Character cr.
	terminator _ $!.
	previous _ cr.
	text do:
		[:char |
		char = cr ifFalse: [previous = cr ifTrue: [aStream tab]].
		aStream nextPut: (previous _ char).
		char = terminator ifTrue: [aStream nextPut: char]].
	aStream nextPut: terminator; cr
