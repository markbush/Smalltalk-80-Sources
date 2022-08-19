magnifyWithSmall
	"Bit editing of an area of the Form. User designates a rectangular area
	that is magnified by 8 to allow individual screens dots to be modified.
	red button is used to set a bit to black and yellow button is used to set a bit to
	white.  Editor is scheduled in a view, showing the magnified view only."

	| smallRect smallForm  |
	smallRect _ Rectangle fromUser.
	smallRect isNil ifTrue: [^self].
	smallForm _ Form fromDisplay: smallRect.
	BitEditor openOnForm: smallForm

	"BitEditor magnifyWithSmall."
