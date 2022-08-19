showVariableMenu: generatorBlock collect: valueBlock
	"Construct a menu of variable names supplied by the generatorBlock,
	with lines between classes in the superclass chain.  Show the menu,
	returning the variable chosen by the user, or nil if no
	variable was chosen."

	| eachClass aStream lines count lastLine variables index |
	aStream _ WriteStream on: (String new: 200).
	lines _ OrderedCollection new.
	count _ 0.
	lastLine _ 0.
	variables _ OrderedCollection new.
	self withAllSuperclasses reverseDo:
		[:eachClass |
		count = lastLine ifFalse: [lines add: count.  lastLine _ count].
		(generatorBlock value: eachClass) do:
			[:var |
			aStream nextPutAll: ((valueBlock value: var) contractTo: 20); cr.
			variables addLast: var.
			count _ count + 1]].
	variables isEmpty ifTrue: [^nil].  "Nothing to choose from"
	aStream skip: -1.
	index _ (PopUpMenu labels: aStream contents lines: lines) startUp.
	^index = 0
		ifTrue: [nil]
		ifFalse: [variables at: index]
