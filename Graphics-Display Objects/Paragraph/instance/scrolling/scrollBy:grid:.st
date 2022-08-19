scrollBy: height grid: grid
	"Change the composition rectangle such that the first line of text corresponds
	to the line at the current first line plus heightToMove, modulo the grid."

	| initialClippingRectangle heightToMove |

	"keep from scrolling out of clippingRectangle"
	heightToMove _
		(height max: self compositionRectangleDelta).
	(heightToMove abs between: 0 and: grid)
		ifTrue: [heightToMove _ heightToMove sign * grid]
		ifFalse: [heightToMove _ heightToMove truncateTo: grid].
	heightToMove  abs >= clippingRectangle height
		ifTrue:	[self clearVisibleRectangle.
				"adjust compositionRectangle behind clippingRectangle"
				compositionRectangle moveBy:  (0 @ (0 - heightToMove)).
				"If heightToMove >= clippingRectangle, all lines to be displayed are not
					currently displayed."
				self displayLines: (1 to: lastLine).
				^self].

	"Adjust compositionRectangle behind clippingRectangle"
	compositionRectangle moveBy:  (0 @ (0 - heightToMove)).
	"Need only to reshow part of clippingRectangle.
		Some of the lines are already on the display screen."
	initialClippingRectangle _ clippingRectangle copy.
	heightToMove  < 0	"Box the lines to be moved."
		ifTrue:	["Moving down."
				clippingRectangle _
					clippingRectangle insetOriginBy: (0 @ 0) cornerBy: (0 @ (0 - heightToMove ))]
			ifFalse: ["Moving up."
					clippingRectangle _
						clippingRectangle insetOriginBy: (0 @ heightToMove ) cornerBy: (0 @ 0)].
			destinationForm
				copyBits: clippingRectangle
				from: destinationForm
				at: clippingRectangle left @ (clippingRectangle top - heightToMove )
				clippingBox: initialClippingRectangle
				rule: Form over
				mask: Form black.

	"Make room in clippingRectangle for lines 'pulled' into view."
	heightToMove < 0
		ifTrue:	["On the top."
				(clippingRectangle bottomRight) y: clippingRectangle top - heightToMove ]
		ifFalse: ["At the bottom."
				(clippingRectangle topLeft)
					y: (((self topAtLineIndex:
							(self lineIndexOfTop: clippingRectangle bottom - heightToMove)))
					max: initialClippingRectangle topLeft y)].

		"The reduced clippingRectangle informs the displayLines routine of what lines to actually display of those it is requested to display.  It only displays those actually falling in the clippingRectangle."

		self displayLines: (1 to: lastLine).

		"If we've shortened so that bottom of compositionRectangle is < clippingRectangle, clear out the the potential garbage at the bottom of the clippingRectangle."
		compositionRectangle bottom < initialClippingRectangle bottom
			ifTrue:	[destinationForm
						fill: (initialClippingRectangle left @ compositionRectangle bottom
								corner: initialClippingRectangle bottomRight)
						mask: Form white].

	"And the clippingRectangle needs to be set to its original value."
	clippingRectangle _ initialClippingRectangle.
