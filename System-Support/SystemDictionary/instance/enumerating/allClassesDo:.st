allClassesDo: aBlock
	"Evaluate the argument, aBlock, for each class in the system."
	(self classNames collect: [:name | Smalltalk at: name]) do: aBlock
