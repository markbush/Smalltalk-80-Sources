reverseSelection
	"Reverse the valence of the current selection highlighting."

	selectionShowing _ selectionShowing not.
	startBlock = stopBlock
		ifTrue: [paragraph displayCaretAt:
					startBlock topLeft + (0 @ paragraph textStyle baseline)]
		ifFalse: [paragraph reverseFrom: startBlock to: stopBlock]
