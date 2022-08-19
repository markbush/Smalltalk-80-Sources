allAccessesTo: instVarName
	"Return a list of all methods in my hierarchy that refer to the named instance variable."
	| coll |
	coll _ OrderedCollection new.
	Cursor execute
		showWhile:
			[(self withAllSuperclasses reverse) , self allSubclasses do:
				[:class |
				(class whichSelectorsAccess: instVarName) do:
					[:sel | sel ~~ #DoIt ifTrue: [coll add: class name , ' ' , sel]]]].
	^coll
	"Collection allAccessesTo: 'contents'."
