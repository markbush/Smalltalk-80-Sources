whichClassesIncludeCategory: categoryName
	"Answer an Array of each class that includes the name, categoryName, as
	one of its message categories."

	| aStream cat |
	aStream _ WriteStream on: (Array new: 10).
	cat _ categoryName asSymbol.
	self allClassesDo:
		[:class |
		(class organization categories includes: cat)
			ifTrue: [aStream nextPut: class].
		(class class organization categories includes: cat)
			ifTrue: [aStream nextPut: class class]].
	^aStream contents

	"Smalltalk whichClassesIncludeCategory: #comparison."
