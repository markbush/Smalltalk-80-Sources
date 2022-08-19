replaceFrom: start to: stop with: aText displaying: displayBoolean
	"Replace the receiver's text starting at position start, stopping at stop, by the characters in aText. It is expected that most requirements for modifications to the receiver will call this code.  Certainly all cut's or paste's."

	| compositionScanner obsoleteLines obsoleteLastLine firstLineIndex lastLineIndex
	startLine stopLine replacementRange visibleRectangle startIndex newLine done
	newStop obsoleteY newY upOrDown moveRectangle |

	text			"Update the text."
	  replaceFrom: start to: stop with: aText.
	lastLine = 0
	  ifTrue: 	["if lines have never been set up, measure them and display
					all the lines falling in the visibleRectangle"
				self composeAll.
				displayBoolean
					ifTrue:	[self clearVisibleRectangle.
							self displayLines: (1 to: lastLine)].
				^self].

	"save -- things get pretty mashed as we go along"
	obsoleteLines _ lines copy.
	obsoleteLastLine _ lastLine.

		"find the starting and stopping lines"
	firstLineIndex _ startLine _ self lineIndexOfCharacterIndex: start.
	stopLine _ self lineIndexOfCharacterIndex: stop.
		"how many characters being inserted or deleted -- negative if
			aText size is < characterInterval size."
	replacementRange _ aText size - (stop - start + 1).
		"Give ourselves plenty of elbow room."
	compositionRectangle height: textStyle lineGrid * 8196.	"max Vector length"
		"build a boundingBox of the actual screen space in question -- we'll need it later"
	visibleRectangle _ (clippingRectangle intersect: compositionRectangle)
							intersect: destinationForm boundingBox.
		"Initialize a scanner."
	compositionScanner _ CompositionScanner new in: self.

		"If the starting line is not also the first line, then measuring must commence from line preceding the one in which characterInterval start appears.  For example, deleting a line with only a carriage return may move characters following the deleted portion of text into the line preceding the deleted line."
	startIndex _ (lines at: firstLineIndex) first.
	startLine > 1
		ifTrue: 	[newLine _
					compositionScanner
						composeLine: startLine - 1
						fromCharacterIndex: (lines at: startLine - 1) first
						inParagraph: self.
				(lines at: startLine - 1) = newLine
					ifFalse:	["start in line preceding the one with the starting character"
							startLine _ startLine - 1.
							self lineAt: startLine put: newLine.
							startIndex _ newLine last + 1]].
	startIndex > text size
		ifTrue: 	["nil lines after a deletion -- remeasure last line below"
				self trimLinesTo: (firstLineIndex - 1 max: 0).
				text size = 0
					ifTrue:	["entire text deleted -- clear visibleRectangle and return."
							destinationForm
				 				fill: visibleRectangle rule: rule mask: Form white.
							self updateCompositionHeight.
							^self]].

	"Now we really get to it."
	done _ false.
	lastLineIndex _ stopLine.
	[done or: [startIndex > text size]]
		whileFalse:
		[self lineAt: firstLineIndex put:
			(newLine _ compositionScanner composeLine: firstLineIndex
							fromCharacterIndex: startIndex inParagraph: self).
		[(lastLineIndex > obsoleteLastLine
			or: ["no more old lines to compare with?"
				newLine last <
					(newStop _ (obsoleteLines at: lastLineIndex) last + replacementRange)])
			  	or: [done]]
			whileFalse:
			[newStop = newLine last
				ifTrue:	["got the match"
						upOrDown _ replacementRange < 0
							ifTrue: [0] ifFalse: [1].
							"get source and dest y's for moving the unchanged lines"
						obsoleteY _ self topAtLineIndex: lastLineIndex + upOrDown.
						newY _ self topAtLineIndex: firstLineIndex + upOrDown.
						stopLine _ firstLineIndex.
						done _ true.
							"Fill in the new line vector with the old unchanged lines.
							Update their starting and stopping indices on the way."
						((lastLineIndex _ lastLineIndex + 1) to: obsoleteLastLine) do:
							[:upDatedIndex |
							self lineAt: (firstLineIndex _ firstLineIndex + 1)
								put: ((obsoleteLines at: upDatedIndex)
							  		slide: replacementRange)].
							"trim off obsolete lines, if any"
						self trimLinesTo: firstLineIndex]
				ifFalse:	[lastLineIndex _ lastLineIndex + 1]].
		startIndex _ newLine last + 1.
		firstLineIndex _ firstLineIndex + 1].

	"Now the lines are up to date -- Whew!.  What remains is to move the 'unchanged' lines and display those which have changed."
	displayBoolean
	ifTrue:	[
	startIndex > text size
		ifTrue:	["If at the end of previous lines simply display lines from the line in
				which the first character of the replacement occured through the
				end of the paragraph."
				self updateCompositionHeight.
				self displayLines:
					(startLine to: (stopLine _ firstLineIndex min: lastLine))]
		ifFalse:	["Otherwise prepare to move the unchanged lines.  moveRectangle
				defines the portion of the visibleRectangle containing the lines
				which may be moved en masse.
				Deletion -- moving 'up' the screen or ..."
				moveRectangle _
					visibleRectangle left @ (obsoleteY max: visibleRectangle top)
						corner: visibleRectangle corner.
				"Insertion -- moving 'down' the screen.
				Shorten moveRectangle by height of insertion or ..."
				obsoleteY <= newY
					ifTrue:	[moveRectangle corner:
								visibleRectangle corner + (0 @ (obsoleteY - newY))]
					ifFalse:	["Deletion,
							and top of moveRectangle will fall above top of
							visibleRectangle.  Increase the origin of moveRectangle
							by the amount that would fall above (hence outside)
							the visibleRectangle."
							newY < visibleRectangle top
								ifTrue:	[moveRectangle origin:
											visibleRectangle left @
												(obsoleteY + visibleRectangle top - newY)]].
				"Move'em."
				destinationForm copyBits: moveRectangle from: destinationForm
					at: visibleRectangle left @ (newY max: visibleRectangle top)
						clippingBox: visibleRectangle rule: Form over mask: Form black.
				"Display the new lines."
				self displayLines: (startLine to: stopLine).
				"A deletion may have 'pulled' previously undisplayed lines into
				the visibleRectangle.  If so, display them."
				(newY < obsoleteY and:
					[(self topAtLineIndex: obsoleteLastLine + 1) > visibleRectangle bottom])
					ifTrue:	[self displayLines:
								((self lineIndexOfTop:
										visibleRectangle bottom - (obsoleteY - newY))
								to: (stopLine _
										self lineIndexOfTop: visibleRectangle bottom))]].

	"If we have done a deletion, obsolete material may remain at the bottom of the visibleRectangle.  If so, clear it out."
	obsoleteLastLine >= lastLine
		ifTrue:	[
				newY _ self topAtLineIndex: lastLine + 1.
				newY < visibleRectangle top
					ifTrue:	["new lastLine is above visibleRectangle,
							clear entire visibleRectangle"
							destinationForm fill: visibleRectangle
								rule: rule mask: Form white]
					ifFalse:	[destinationForm
								fill: ((visibleRectangle left @ newY
									extent: visibleRectangle extent)
							intersect: visibleRectangle)
							rule: rule mask: Form white]]].
	self updateCompositionHeight.
