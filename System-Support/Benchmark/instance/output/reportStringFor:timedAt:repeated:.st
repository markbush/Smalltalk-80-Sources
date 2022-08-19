reportStringFor: label timedAt: time repeated: numberOfTimes
	"Generate the parsible string to represent the measurement of a benchmark."

	| nTimes unitTime seconds aStream|
	aStream _ WriteStream on: (String new: 200).
	nTimes _ numberOfTimes <= 1000
				ifTrue: [numberOfTimes]
				ifFalse: [numberOfTimes // 1000 * 1000].
	seconds _ time asFloat / 1000.
	aStream cr; nextPutAll: 'Testing:  [' , label , ']'; cr.
	aStream tab; print: nTimes; nextPutAll: ' repetition(s) in'; cr;
		tab; print: seconds; nextPutAll: ' seconds'; cr.
	nTimes ~= 1
		ifTrue:
			[unitTime _ (time * 1000) asFloat / nTimes.
			aStream tab; print: unitTime;
				nextPutAll: ' microseconds per repetition'; cr].
	^aStream contents
