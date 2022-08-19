printHierarchy
	"Answer a description containing the names and instance variable
	names of all of the subclasses and superclasses of the receiver."

	| aStream index supers |
	index _ 0.
	aStream _ WriteStream on: (String new: 16).
	self allDynamicSuperclasses reverseDo:
		[:aClass |
		aStream crtab: index.
		index _ index + 1.
		aStream nextPutAll: aClass name.
		aStream space.
		aStream print: aClass instVarNames.
		supers _ aClass superclasses.
		supers size>1 ifTrue:
			[aStream nextPutAll: '  [also a '.
			(supers copyFrom: 2 to: supers size) do:
				[:s | aStream space; nextPutAll: s name; space; print: s allInstVarNames].
			aStream nextPut: $]  ]].
	aStream cr.
	self printSubclassesOn: aStream callingSuperclass: self dynamicSuperclass level: index.
	^aStream contents
