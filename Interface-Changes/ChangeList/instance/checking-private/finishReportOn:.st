finishReportOn: aStream
	"report conflicts among the changes"
	| cr previous terminator |
	cr _ Character cr.
	terminator _ $!.
	doItDict associationsDo:
		[:aDoIt |
		aStream cr; nextChunkPut: '"*** DoIts in ', aDoIt key, ' ***"'; cr; cr.
		aDoIt value do:
			[:doit | self tabText: doit text on: aStream] ].

	aStream isEmpty ifTrue:
		[Transcript show: '*** no conflicts ***'.
		aStream nextChunkPut: '"*** no conflicts ***"'; cr].
	^aStream close
