printOn: aStream total: total
	| aSelector aClass |
	aStream print: (tally asFloat / total * 100.0 roundTo: 0.1); space.
	receivers == nil
		ifTrue: [aStream nextPutAll: 'primitives']
		ifFalse:
			[aSelector _ class selectorAtMethod: method setClass: [:aClass].
			aStream nextPutAll: aClass name; space; nextPutAll: aSelector].
	aStream cr
