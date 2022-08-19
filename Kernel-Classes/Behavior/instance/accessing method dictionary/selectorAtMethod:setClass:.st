selectorAtMethod: method setClass: classResultBlock
	"Answer both the message selector associated with the compiled method
	and the class in which that selector is defined."

	| sel |
	sel _ methodDict keyAtValue: method
				ifAbsent:
					[superclass == nil
						ifTrue:
							[classResultBlock value: self.
							^self defaultSelectorForMethod: method].
					sel _ superclass selectorAtMethod: method setClass: classResultBlock.
					"Set class to be self, rather than that returned from
					superclass. "
					sel == (self defaultSelectorForMethod: method) ifTrue: [classResultBlock value: self].
					^sel].
	classResultBlock value: self.
	^sel
