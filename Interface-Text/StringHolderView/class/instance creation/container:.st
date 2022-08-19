container: aContainer
	"Answer an instance of me whose model is aContainer.  Give it a 2-dot border."

	| aCodeView |
	aCodeView _ self new model: aContainer.
	aCodeView borderWidth: 1.
	^aCodeView
