nextTabXFrom: anX leftMargin: leftMargin rightMargin: rightMargin
	"Tab stops are distances from the leftMargin.  Set the distance into anX normalized for the paragraph's left margin.  Scale makes the routine usable for printing.  On the display the scale is 1."

	| normalizedX tabX scale |

	scale _ 1.
	normalizedX _ anX - leftMargin.
	1 to: tabsArray size do:
					[:i | (tabX _ ((tabsArray at: i) * scale) asInteger) > normalizedX
						ifTrue: [^leftMargin + tabX min: rightMargin]].
	^rightMargin
