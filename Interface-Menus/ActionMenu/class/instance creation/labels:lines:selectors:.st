labels: aString lines: anArray selectors: selArray
	| aMenu |
	aMenu _ self labels: aString lines: anArray.
	aMenu setSelectors: selArray.
	^ aMenu
