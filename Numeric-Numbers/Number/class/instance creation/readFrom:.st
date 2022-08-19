readFrom: aStream
	"Answer an instance of me as described on the stream, aStream"

	| value radix fraction fracpos |
	radix _ 10.
	value _ Integer readFrom: aStream.
	(aStream peekFor: $r)
		ifTrue:
			["<radix>r<integer>"
			(radix _ value) < 2 ifTrue: [^self error: 'INVALID RADIX'].
			value _ Integer readFrom: aStream radix: radix].
	(aStream peekFor: $.)
		ifTrue:
			["<integer>.<fraction>"
			(aStream atEnd not and: [aStream peek digitValue between: 0 and: radix - 1])
				ifTrue:
					[fracpos _ aStream position.
					fraction _ Integer readFrom: aStream radix: radix.
					radix _ radix asFloat.
					fraction _
						fraction asFloat / (radix raisedTo: aStream position - fracpos).
					value _ value asFloat + (value < 0
									ifTrue: [fraction negated]
									ifFalse: [fraction])]
				ifFalse:
					["oops - just <integer>."
					aStream skip: -1.		"un-gobble the period"
					^value
									"Number readFrom: (ReadStream on: '3r-22.2')"]].
	(aStream peekFor: $e)
		ifTrue:
			["<integer>e<exponent>"
			^value * (radix raisedTo: (Integer readFrom: aStream))].
	^value
