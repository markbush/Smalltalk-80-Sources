commentTemplate
	"Answer an expression to edit and evaluate in order to produce the receiver's comment."

	| aString |
	aString _ self organization classComment.
	aString size = 0
		ifTrue: [^self name , ' comment:
''This class has not yet been commented.  A proper comment should include the purpose of the class and the type and purpose of each instance variable.
''']
		ifFalse: [^aString]
