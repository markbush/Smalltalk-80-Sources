printSubclassesOn: aStream callingSuperclass: whichSuper level: level
	"As part of the algorithm for printing a description of the receiver, print the
	subclass on the file stream, aStream, indenting level times."
	| subs supers |
	aStream crtab: level.
	aStream nextPutAll: self name.
	aStream space; print: self instVarNames.
	supers _ self superclasses.
	supers size>1 ifTrue:
		[aStream nextPutAll: '  [also a'.
		(supers copyWithout: whichSuper) do:
			[:s | aStream space; nextPutAll: s name; space; print: s allInstVarNames].
		aStream nextPut: $]  ].
	subs _ self subclasses.
	self == Class ifTrue:
		[aStream crtab: level+1; nextPutAll: '... all the Metaclasses ...'.
		subs _ subs reject: [:sub | sub isMeta]].
	"Print subclasses in alphabetical order"
	(subs asSortedCollection: [:x :y | x name < y name]) do:
		[:sub |
		sub printSubclassesOn: aStream callingSuperclass: self level: level + 1]
