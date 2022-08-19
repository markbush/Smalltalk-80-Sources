explainInst: string
	"Is string an instance variable of this class?"

	| name each classes |
	class == nil ifTrue: [^nil].	  "no class is selected"
	classes _ class withAllSuperclasses.
	classes _ classes detect: [:each | (each instVarNames
			detect: [:name | name = string] ifNone: [])
			~~ nil] ifNone: [^nil].
	classes _ classes printString.
	^ '"is an instance variable of the receiver; defined in class ' , classes , '"',
		NewLine , classes , ' browseAllAccessesTo: ''' , string , '''.'
