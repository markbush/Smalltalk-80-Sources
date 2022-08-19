dynamicMethodDescriptionAt: selector
	"return a method description for the method for 'selector' that would
	 be found by dynamic lookup"
	(methodDict includesKey: selector) ifTrue:
		[^MethodDescription whichClass: self selector: selector].
	superclass == nil ifTrue:
		[^MethodDescription makeMethodNotImplemented].
	^superclass dynamicMethodDescriptionAt: selector
