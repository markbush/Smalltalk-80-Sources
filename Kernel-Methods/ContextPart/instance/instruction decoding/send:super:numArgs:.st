send: selector super: superFlag numArgs: numArgs
	"Simulates the action of bytecodes that send a message
	with selector, selector.  The argument, superFlag, tells
	whether the receiver of the message was specified with
	'super' in the source method.  The arguments of the message
	are found in the top numArgs locations on the stack and
	the receiver just below them."

	| receiver arguments |
	arguments _ OrderedCollection new.
	numArgs timesRepeat: [arguments addFirst: self pop].
	receiver _ self pop.
	(selector == #halt or: [selector == #halt:]) ifTrue:
		[self error: 'Cant simulate halt.  Proceed to bypass it.'.
		self push: nil. ^self].
	^self send: selector to: receiver with: arguments super: superFlag
