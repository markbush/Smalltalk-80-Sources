messagePart: level repeat: repeat
	| start receiver selector args precedence |

	[receiver _ parseNode.
	(hereType == #keyword and: [level >= 3])
		ifTrue:
			[start _ self startOfNextToken.
			selector _ WriteStream on: (String new: 32).
			args _ OrderedCollection new.
			[hereType == #keyword]
				whileTrue:
					[selector nextPutAll: self advance.
					self primaryExpression ifFalse: [^self expected: 'Argument'].
					self messagePart: 2 repeat: true.
					args addLast: parseNode].
			selector _ self makeNewSymbol: selector contents startingAt: start.
			precedence _ 3]
		ifFalse: [((hereType == #binary or: [hereType == #verticalBar])
				and: [level >= 2])
				ifTrue:
					[start _ self startOfNextToken.
					selector _ self advance asSymbol.
					self primaryExpression ifFalse: [^self expected: 'Argument'].
					self messagePart: 1 repeat: true.
					args _ Array with: parseNode.
					precedence _ 2]
				ifFalse: [hereType == #word
						ifTrue:
							[start _ self startOfNextToken.
							selector _ self makeNewSymbol: self advance startingAt: start.
							args _ #().
							precedence _ 1]
						ifFalse: [^args notNil]]].
	parseNode _ MessageNode new
				receiver: receiver
				selector: selector
				arguments: args
				precedence: precedence
				from: encoder
				sourceRange: (start to: self endOfLastToken).
	repeat]
		whileTrue: [].
	^true
