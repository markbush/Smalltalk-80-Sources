printOn: aStream digits: digits
	"Print me using digits significant figures."

	self > 0.0
		ifTrue: [self absPrintOn: aStream digits: digits]
		ifFalse: [self = 0.0
					ifTrue:
						[aStream nextPutAll: '0.0']
					ifFalse:
						[aStream nextPutAll: '-'.
						self negated absPrintOn: aStream digits: digits]]
