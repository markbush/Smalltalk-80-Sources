explainCtxt: symbol
	"Is symbol a context variable?"

	| reply classes text |
	symbol = #nil ifTrue: [reply _ '"is a constant.  It is the only instance of class UndefinedObject.  nil is the initial value of all variables."'].
	symbol = #true ifTrue: [reply _ '"is a constant.  It is the only instance of class True and is the receiver of many control messages."'].
	symbol = #false ifTrue: [reply _ '"is a constant.  It is the only instance of class False and is the receiver of many control messages."'].
	class == nil ifTrue: [^nil].	  "no message selected"
	symbol = #self
		ifTrue:
			[classes _ class withAllSubclasses.
			classes size > 12
				ifTrue: [text _ class printString , ' or a subclass']
				ifFalse:
					[classes _ classes printString.
					text _ 'one of these classes' , (classes copyFrom: 4 to: classes size)].
			reply _ '"is the receiver of this message; an instance of ' , text , '"'].
	symbol = #super ifTrue: [reply _ '"is just like self.  Messages to super are looked up in the superclass (' , class superclass printString , ')"'].
	symbol = #thisContext ifTrue: [reply _ '"is a context variable.  It''s value is always the MethodContext which is executing this method."'].
	^reply
