enclose: characterStream
	"Insert or remove bracket characters around the current selection.
		If null selection, then make a pair of brackets with cursor inside"
	| char left right startIndex stopIndex which text oldSelection |
	char _ Sensor keyboard asciiValue.
	characterStream reset.
	self deselect.
	startIndex _ startBlock stringIndex.
	stopIndex _ stopBlock stringIndex.
	which _ #(213 7 218 249 219 15) indexOf: char.
	left _ '([<{"''' at: which.
	right _ ')]>}"''' at: which.
	text _ paragraph text.
	((startIndex > 1 and: [stopIndex <= text size])
		and:
		[(text at: startIndex-1) = left and: [(text at: stopIndex) = right]])
		ifTrue:
			["already enclosed; strip off brackets"
			oldSelection _ self selection.
			self selectFrom: startIndex-1 to: stopIndex; deselect.
			self replaceSelectionWith: oldSelection.
			self select]
		ifFalse:
			["not enclosed; enclose by matching brackets"
			self selectAt: startIndex; deselect.
			self setEmphasisHere.
			self replaceSelectionWith: (Text string: (String with: left)
						emphasis: emphasisHere).
			self selectAt: stopIndex+1; deselect.
			self setEmphasisHere.
			self replaceSelectionWith: (Text string: (String with: right)
						emphasis: emphasisHere).
			self selectFrom: stopIndex+1 to: stopIndex].
	^ true
