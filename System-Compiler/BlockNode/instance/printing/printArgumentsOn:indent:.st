printArgumentsOn: aStream indent: level
	arguments size = 0
		ifFalse:
			[arguments do:
				[:arg |
				aStream nextPut: $:.
				aStream nextPutAll: arg key.
				aStream space].
			aStream nextPutAll: '| '.
			"If >0 args and >1 statement, put all statements on separate lines"
			statements size > 1 ifTrue: [aStream crtab: level]]
