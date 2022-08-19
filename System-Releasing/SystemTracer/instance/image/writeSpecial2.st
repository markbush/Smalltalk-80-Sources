writeSpecial2
	| obj pos max oldTable |
	specialObjects do:
		[:obj |
		"make sure parts are written (will cause extra ref)"
		self trace: obj class.
		obj == Symbol table | obj class isBits
			ifFalse: [1 to: (self sizeInWordsOf: obj) do:
						[:i | self trace: (obj instVarAt: i)]]].
	oldTable _ Symbol table copy.
	"trim Symbol table to only those UStrings used"
	1 to: Symbol table size do:
		[:i |
		Symbol table
			at: i
			put: ((Symbol table at: i)
					select: [:obj | (refcts at: (self oopOf: obj)) > NoRefs])].
	1 to: (self sizeInWordsOf: Symbol table) do:
		[:i | self trace: (Symbol table instVarAt: i)].
	pos _ file position.
	file position: 512.
	max _ maxOop.
	specialObjects do:
		[:obj | "go back and write data after tracing"
		self perform: (writeDict at: obj class) with: obj].
	max ~= maxOop ifTrue: [self error: 'bug in tracer'].
	file position: pos.
	specialObjects do:
		[:obj | "undo the extra refs due to specialObjects"
		self unref: obj class.
		obj class isBits ifFalse:
			[1 to: (self sizeInWordsOf: obj) do: [:i | self unref: (obj instVarAt: i)]]].
	Symbol table: oldTable.
	self unref: #Smalltalk; unref: #Processor
