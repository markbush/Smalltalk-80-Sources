find: aFile ifAbsentDo: aBlock
	| sn |
	(aFile fileName sameAs: Dirname)
		ifTrue:
			["return system directory file. known serialNumber and leader"
			sn _ ByteArray new: 4.
			sn wordAt: 1 put: 8r100000.
			sn wordAt: 2 put: 8r144.
			aFile serialNumber: sn.
			aFile leader: 8r10000 "(self virtualToReal: 1)".
			^aFile].

	"^super find: aFile ifAbsent: aBlock"
	(self findFileOrHole: aFile) ifFalse: [^aBlock value: aFile].
	^self nextFile: aFile
