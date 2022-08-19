recompileMethodsForWhich: aBlock
	"Recompile all methods in the system for which aBlock evaluates to true.
	For example,
		Smalltalk recompileMethodsForWhich: [:meth | meth size=6]"

	Cursor execute showWhile:
		[self allBehaviorsDo:
			[:class | class selectors do:
				[:sel | (aBlock value: (class compiledMethodAt: sel))
					ifTrue:
						[Transcript show: class name , ' ' , sel; cr.
						class recompile: sel]]]]
