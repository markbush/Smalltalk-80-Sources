initialize
	"Initialize the yellow button menu information, the keyboard map for special
	control characters, and the shared buffers for copying text across views and
	managing undo."

	CurrentSelection _ UndoSelection _ Text new.
	TextEditorYellowButtonMenu _ PopUpMenu labels: 'again
undo
copy
cut
paste
accept
cancel
align
fit'
	lines: #(2 5 7).
	TextEditorYellowButtonMessages _
		#(again undo copySelection cut paste accept cancel align fit ).
	Keyboard _ Array new: 256.
	Keyboard atAllPut: #normalCharacter:.
	Keyboard at: Cut asciiValue + 1 put: #cut:.
	Keyboard at: Paste asciiValue + 1 put: #paste:.
	Keyboard at: ESC asciiValue + 1 put: #selectCurrentTypeIn:.
	Keyboard at: BS asciiValue + 1 put: #backspace:.
	Keyboard at: Ctrlw asciiValue + 1 put: #backWord:.
	Keyboard at: Ctrlt asciiValue + 1 put: #displayIfTrue:.
	Keyboard at: Ctrlf asciiValue + 1 put: #displayIfFalse:.
	Keyboard at: 132 + 1 put: #displayDate:.	"ctrl-d"

	#(159 144 143 128 127 129 131 180 149 135 223 208		"fonts"
		137 201											"underline, unUnderline"
		166 230											"bold, unbold"
		150 214											"italic, unitalic"
		151												"clear emphasis")
	do:
		["CTL-1 thru 9, and 0, CTLSHIFT 1-2
			CTL-, CTLSHIFT-"
		:i |	Keyboard at: i + 1 put: #changeEmphasis:].

	#(213 7 218 249 219 15) do:
		[:i | "ctl open brackets"
		Keyboard at: i + 1 put: #enclose:].
	Keyboard at: BS2 asciiValue + 1 put: #leaveBrackets:.

	"ParagraphEditor initialize."
