format
	"Reformat the contents of the receiver's view, formatted, if the view is unlocked."
	| selectedClass aCompiler newText |
	Sensor leftShiftDown ifTrue: [^self miniFormat].
	self textHasChanged
		ifTrue: [view flash. ^self].
	selectedClass _ model selectedClass.
	self controlTerminate.
	Cursor execute showWhile:
		[aCompiler _ selectedClass compilerClass new.
		self selectFrom: 1 to: paragraph text size.
		self deselect.
		newText _
			aCompiler
				format: model text
				in: selectedClass
				notifying: self.
		newText == nil ifFalse:
			[self replaceSelectionWith: (newText asText makeSelectorBoldIn: selectedClass).
			self selectAt: 1]].
	self controlInitialize
