checkEmphasis
	| emphasis sourceRect italicY lineSegment displayDestX displayRunX |

	(emphasis _ (font emphasis bitAnd: 7)) = 0
		ifTrue: [^self].
	displayDestX _ destX.
					displayRunX _ runX.
	emphasis >= 8	"overstrike"
		ifTrue:	[destForm
							fill: ((displayRunX @ (lineY + textStyle baseline-3))
							extent: (displayDestX - displayRunX) @ 1)
							rule: combinationRule mask: halftoneForm.
				emphasis _ emphasis - 8].
	emphasis >= 4	"underlined"
		ifTrue:	[lineSegment _
								((displayRunX @ (lineY + textStyle baseline + 1))
									extent: (displayDestX - displayRunX) @ 1).
							lineSegment bottom <= (clipY+clipHeight) ifTrue:
								[destForm fill: lineSegment
									rule: combinationRule
									mask: halftoneForm].
					emphasis _ emphasis - 4].
	emphasis >= 2	"italic"
		ifTrue:	[italicY _ lineY + textStyle lineGrid - 4.
							[italicY > lineY]
							whileTrue:
							[sourceRect _
								displayRunX @ lineY
									extent: (displayDestX - displayRunX - 1)
												@ (italicY - lineY).
							destForm
							copyBits: sourceRect
							from: destForm
							at: (displayRunX+1) @ lineY
							clippingBox: sourceRect
							rule: Form over mask: nil.
							italicY _ italicY - 4].
					emphasis _ emphasis - 2].
	emphasis >= 1	"bold face"
		ifTrue:	[sourceRect _ displayRunX @ lineY
								extent: (displayDestX - displayRunX - 1)
											@ textStyle lineGrid.
							destForm
							copyBits: sourceRect
							from: destForm
							at: (displayRunX+1) @ lineY
							clippingBox: sourceRect rule: Form under mask: nil]
