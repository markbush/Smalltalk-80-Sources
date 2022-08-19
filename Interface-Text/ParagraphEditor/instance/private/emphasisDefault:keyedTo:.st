emphasisDefault: oldEmphasisCode keyedTo: keyboardCharacter
	"Some default ways to get common forms of emphasis -- returns a new emphasis code.  Subroutine for changeEmphasis.  If anyone else uses, please note here."

	keyboardCharacter = CtrlMinus					"underline"
		ifTrue:	[^ paragraph textStyle underlinedFontFor: oldEmphasisCode].
	keyboardCharacter = CtrlShiftMinus				"unUnderline"
		ifTrue:	[^ paragraph textStyle unUnderlinedFontFor: oldEmphasisCode].
	keyboardCharacter = Ctrlb						"Bold"
		ifTrue:	[^ paragraph textStyle boldFontFor: oldEmphasisCode].
	keyboardCharacter = CtrlB						"unBold"
		ifTrue:	[^ paragraph textStyle basalFontFor: oldEmphasisCode].
	keyboardCharacter = Ctrli						"Italic"
		ifTrue:	[^ paragraph textStyle italicFontFor: oldEmphasisCode].
	keyboardCharacter = CtrlI						"unItalic"
		ifTrue:	[^ paragraph textStyle basalFontFor: oldEmphasisCode].
	keyboardCharacter = Ctrlx						"clear emphasis, go to basal font"
		ifTrue:	[^ paragraph textStyle basalFontFor: oldEmphasisCode].
