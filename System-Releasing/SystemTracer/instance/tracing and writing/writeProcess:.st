writeProcess: obj
	"Substitute new initialProcess for current"

	| length newObj |
	newObj _
		obj == Processor activeProcess
			ifTrue: [initialProcess]
			ifFalse: [obj].
	self new: obj
		class: newObj class
		length: (length _ self sizeInWordsOf: newObj)
		trace: [1 to: length do: [:i | self trace: (newObj instVarAt: i)]]
		write: [1 to: length do: [:i | self writePointerField: (newObj instVarAt: i)]]
