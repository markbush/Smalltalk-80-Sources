doesNotUnderstand: aMessage
	"First check for a compound selector.  If found, try copying down code
	into the receiver's class.  If this is unsuccessful,
	announce that the receiver does not understand the argument, aMessage,
	as a message.  The default behavior is to create a Notifier containing the
	appropriate message and to allow the user to open a Debugger.
	Subclasses can override this message in order to modify this behavior."
	| status gripe |

	status _ self class tryCopyingCodeFor: aMessage selector.
	status==#OK ifTrue:
		[^self perform: aMessage selector withArguments: aMessage arguments].

	gripe _ status==#HierarchyViolation
		ifTrue: [aMessage selector classPart , ' is not one of my superclasses: ']
		ifFalse: ['Message not understood: '].
	NotifierView
		openContext: thisContext
		label: gripe , aMessage selector
		contents: thisContext shortStack.
	"Try the message again if the programmer decides to proceed."
	^self perform: aMessage selector withArguments: aMessage arguments

	"3 zork."
