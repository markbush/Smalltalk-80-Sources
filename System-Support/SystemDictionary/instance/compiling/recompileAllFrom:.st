recompileAllFrom: firstName
	"Recompile all classes, starting with given name."

	| class |
	Smalltalk forgetDoIts.
	self allClassesDo:
		[:class | class name >= firstName
			ifTrue:
				[Transcript show: class name; cr.
				class compileAll]]

	"Smalltalk recompileAllFrom: 'Aardvark'."
