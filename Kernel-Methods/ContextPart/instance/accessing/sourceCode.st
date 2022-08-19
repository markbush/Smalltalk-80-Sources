sourceCode
	"Answer the source form of the receiver's method."
	| mclass selector method |
	method _ self method.
	selector _ self receiver class selectorAtMethod: method setClass: [:mclass].
	^ mclass sourceCodeForMethod: method at: selector
