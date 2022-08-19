mouseSelect: previousStartBlock to: previousStopBlock
	"Answer with an Array of two CharacterBlocks that represent the text selection that the user makes. Allow for scrolling to extend selections."

	| pivotBlock startBlock stopBlock showingCaret dy pt okToScroll scrollDelay word |
	startBlock _ stopBlock _ pivotBlock _ self characterBlockAtPoint: Sensor cursorPoint.
	self displayCaretForBlock: pivotBlock.
	showingCaret _ true.
	okToScroll _ true.
	scrollDelay _ Delay forMilliseconds: 250. "For Dorados"
	[Sensor redButtonPressed] whileTrue: [
		pt _ Sensor cursorPoint.
		(okToScroll
		 and: [(dy _ self dyForPoint: pt) ~= 0]) ifTrue: [
			[okToScroll _ false. scrollDelay wait. okToScroll _ true]
				forkAt: Processor userInterruptPriority.
			showingCaret
				ifTrue: [
					self displayCaretForBlock: pivotBlock.
					showingCaret _ false]
				ifFalse: [self reverseFrom: startBlock to: pivotBlock].
			self scrollBy: dy.
			pt _ dy < 0
				ifTrue: [clippingRectangle topLeft]
				ifFalse: [clippingRectangle bottomRight].
			pivotBlock _ self characterBlockForIndex: pivotBlock stringIndex.
			startBlock _ pivotBlock ].
		stopBlock _ self characterBlockAtPoint: pt.
		stopBlock = startBlock ifFalse: [
			showingCaret ifTrue: [
				self displayCaretForBlock: pivotBlock. showingCaret _ false].
			self reverseFrom: startBlock to: stopBlock.
			startBlock _ stopBlock] ].
	(showingCaret not and: [pivotBlock = stopBlock])
		ifTrue: [self displayCaretForBlock: pivotBlock].
	scrollDelay disable.
	(previousStartBlock = previousStopBlock and:
		[pivotBlock = stopBlock and: [stopBlock = previousStopBlock]])
		ifTrue:  "select a word or bracketed range"
			[word _ self selectWord: pivotBlock stringIndex.
			word first = word last ifFalse:
				[self displayCaretForBlock: pivotBlock.
				pivotBlock _ self characterBlockForIndex: word first.
				stopBlock _ self characterBlockForIndex: word last.
				self reverseFrom: pivotBlock to: stopBlock]].
	stopBlock < pivotBlock
		ifTrue: [^Array with: stopBlock with: pivotBlock]
		ifFalse: [^Array with: pivotBlock with: stopBlock]
