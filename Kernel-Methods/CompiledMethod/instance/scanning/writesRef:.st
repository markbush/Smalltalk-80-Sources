writesRef: ref
	"Answer whether the receiver stores the argument."

	| lit |
	lit _ self literals indexOf: ref ifAbsent: [^false].
	^self scanLongStore: 192 + lit - 1
