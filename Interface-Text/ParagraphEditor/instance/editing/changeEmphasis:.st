changeEmphasis: characterStream
	"Change the emphasis of the current selection or prepare to accept characters with the change in emphasis.  Emphasis change amounts to a font change."

	| oldCode newCode keyboard |

	oldCode _ paragraph text emphasisAt: startBlock stringIndex.
	((newCode _ #(159 144 143 128 127 129 131 180 149 135 223 208)
		"CTL 1-9, 0, CTLSHIFT 1-2		-- fonts"
		indexOf:  ((keyboard _ sensor keyboard) asciiValue)) = 0)
		ifTrue:	[newCode _ self emphasisDefault: oldCode keyedTo: keyboard].
	(((paragraph textStyle isFontUnderlined: oldCode)
		and: [keyboard ~= CtrlShiftMinus		"--unUnderline"])
			and: [keyboard ~= Ctrlx				"clear emphasis"])
		ifTrue:	["If font being replaced was underlined, use underlined version
					of new font, unless unUnderline has just been struck"
				newCode _ paragraph textStyle underlinedFontFor: newCode].

	startBlock stringIndex = stopBlock stringIndex
	  ifTrue:  "only change emphasisHere while typing"
		[emphasisHere _ newCode.
		self select.
		^true].
	self replaceSelectionWith:
		(Text string: self selection asString emphasis: (newCode max: 1)).
	self closeTypeIn.
	self select.
	^true
