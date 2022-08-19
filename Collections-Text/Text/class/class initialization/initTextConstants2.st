initTextConstants2		"Text initTextConstants."
	"Initialize constants shared by classes associated with text display, e.g.,
	space, tab, cr, bs, esc."

	TextConstants		at: #Ctrlh				put:	(179 asCharacter).
	TextConstants		at: #CtrlH				put:	(243 asCharacter).
	TextConstants		at: #Ctrls				put:	(19 asCharacter).
	TextConstants		at: #CtrlS				put:	(211 asCharacter).

	TextConstants		at: #Ctrln				put:	(14 asCharacter).
	TextConstants		at: #CtrlN				put:	(245 asCharacter).
	TextConstants		at: #Ctrlp				put:	(138 asCharacter).
	TextConstants		at: #CtrlTopBlank			put:	(222 asCharacter).
	TextConstants		at: #CtrlMiddleBlank		put:	(229 asCharacter).
	TextConstants		at: #CtrlBottomBlank		put:	(225 asCharacter).

		"location of non-character stop conditions"
	TextConstants		at: #EndOfRun			put:	257.
	TextConstants		at: #CrossedX				put:	258.

		"values for alignment"
	TextConstants		at: #LeftFlush			put:	0.
	TextConstants		at: #RightFlush			put:	1.
	TextConstants		at: #Centered				put:	2.
	TextConstants		at: #Justified				put:	3.

		"subscripts for a marginTabsArray tuple"
	TextConstants		at: #LeftMarginTab		put:	1.
	TextConstants		at: #RightMarginTab		put:	2.

		"font faces"
	TextConstants		at: #Basal				put:	0.
	TextConstants		at: #Bold				put:	1.
	TextConstants		at: #Italic				put:	2.
	TextConstants		at: #BoldItalic			put:	3.
	TextConstants		at: #Underlined			put:	4.
	TextConstants		at: #OverStruck			put:	8.
	TextConstants		at: #Subscripted			put:	16.
	TextConstants		at: #Superscripted			put:	32.
	TextConstants		at: #SubscriptedUnderlined			put:	20.
	TextConstants		at: #SuperscriptedUnderlined			put:	36.
	TextConstants		at: #UnderlinedBit		put:	3.
	TextConstants		at: #OverStruckBit			put:	4.
	TextConstants		at: #SubscriptedBit		put:	5.
	TextConstants		at: #SuperscriptedBit			put:	6.
	TextConstants		at: #SubSuperscriptMask			put:	48.
	TextConstants		at: #NonFaceEmphasisMask			put:	52. "overstrike not supported"
	TextConstants		at: #FamilyName			put:	1.
	TextConstants		at: #PointSize				put:	2.
	TextConstants		at: #Face				put:	3.
