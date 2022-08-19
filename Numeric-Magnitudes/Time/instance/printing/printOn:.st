printOn: aStream
	"Format is h:mm:ss am/pm"

	hours > 12
		ifTrue: [hours - 12 printOn: aStream]
		ifFalse: [hours < 1
					ifTrue: [12 printOn: aStream]
					ifFalse: [hours printOn: aStream]].
	aStream nextPutAll: (minutes < 10
							ifTrue: [':0']
							ifFalse: [':']).
	minutes printOn: aStream.
	aStream nextPutAll: (seconds < 10
							ifTrue: [':0']
							ifFalse: [':']).
	seconds printOn: aStream.
	aStream nextPutAll: (hours < 12
							ifTrue: [' am']
							ifFalse: [' pm'])
