initTextConstants	"Text initTextConstants."
	"Initialize constants shared by classes associated with text display, e.g.,
	space, tab, cr, bs, esc."

	| tempArray  |
	TextConstants		at: #Space				put:	(32 asCharacter).
	TextConstants		at: #Tab					put:	(9 asCharacter).
	TextConstants		at: #CR					put:	(13 asCharacter).
	TextConstants		at: #BS					put:	(8 asCharacter).
	TextConstants		at: #BS2					put:	(158 asCharacter).
	TextConstants		at: #Ctrlw				put:	(145 asCharacter).
	TextConstants		at: #ESC					put:	(160 asCharacter).
	TextConstants		at: #Cut					put:	(173 asCharacter).
	TextConstants		at: #Paste				put:	(30 asCharacter).
	TextConstants		at: #Ctrlt				put:	(11 asCharacter).
	TextConstants		at: #Ctrlf				put:	(12 asCharacter).
	TextConstants		at: #Ctrlz				put:	(26 asCharacter).

		"in case font doesn't have a width for space character"
		"some plausible numbers-- are there right ones?"
	TextConstants		at: #DefaultSpace			put:	4.
	TextConstants		at: #DefaultTab			put:	24.
	TextConstants		at: #DefaultLineGrid		put:	16.
	TextConstants		at: #DefaultBaseline		put:	12.
	TextConstants		at: #DefaultRule			put:	Form over.
	TextConstants		at: #DefaultMask			put:	Form black.

	TextConstants		at: #CtrlMinus			put:	(137 asCharacter).
	TextConstants		at: #CtrlShiftMinus		put:	(201 asCharacter).
	TextConstants		at: #Ctrlb				put:	(166 asCharacter).
	TextConstants		at: #CtrlB				put:	(230 asCharacter).
	TextConstants		at: #Ctrli					put:	(150 asCharacter).
	TextConstants		at: #CtrlI				put:	(214 asCharacter).
	TextConstants		at: #Ctrlx				put:	(151 asCharacter).




	tempArray _ Array new: Display width // DefaultTab.
	1 to: tempArray size do:
		[:i | tempArray
				at: i
				put: DefaultTab * i].
	TextConstants at: #DefaultTabsArray put: tempArray.
	tempArray _ Array new:
					(Display width // DefaultTab) // 2.
	1 to: tempArray size do:
		[:i | tempArray
				at: i
				put: (Array with: (DefaultTab*i) with: (DefaultTab*i))].
	TextConstants at: #DefaultMarginTabsArray 	put: tempArray.
	self initTextConstants2.
