processMenuKey
	"The user typed a key on the keyboard.  Give control to the subView that
	is selected by this key."

	| aView |
	aView _ view subViewContainingCharacter: sensor keyboard.
	aView ~~ nil
		ifTrue: [aView controller sendMessage]
