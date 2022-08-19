makeNewSymbol: aString startingAt: start
	| editor index menu sym oldText newText oldStream oldKey |
	Symbol hasInterned: aString ifTrue: [:symbol | ^ symbol].
	(editor _ self editor) isNil ifTrue: [^ aString asSymbol].
	editor selectFrom: start to: self endOfLastToken.
	Cursor normal show.
	index _ (menu _ ActionMenu
			labels: 'proceed as is\correct it\abort' withCRs
			selectors: #(proceed correct abort))
				startUp: #anyButton
				withHeading: ' ' , (aString contractTo: 20) , ' is a new message '.
	index = 0 ifTrue: [^ self notify: ''].
	(menu selectorAt: index) == #proceed ifTrue: [^ aString asSymbol].
	(menu selectorAt: index) == #correct ifTrue:
		[sym _ Symbol correctMessage: aString.
		sym == false ifTrue: [self notify: 'Couldn''t correct'. self abort].
		sym == nil ifTrue: [self abort].
		oldText _ editor selection.
		sym isKeyword
			ifTrue:
				[newText _ oldText.
				oldStream _ ReadStream on: aString.
				sym keywords do:
					[:newKey | oldKey _ (oldStream upTo: $:) , ':'.
					oldKey = newKey ifFalse:
						[newText _ newText copyReplaceAll: oldKey asText with: newKey asText]]]
			ifFalse:
				[newText _ oldText copyReplaceAll: aString asText with: sym asText].
		self replaceEditSelectionWith: newText.
		^ sym].
	self abort
