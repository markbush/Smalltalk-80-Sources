fromUser: aPoint
	"Answer an instance of me with bitmap initialized from the area of
	the display screen designated by the user.  The grid for selecting an area
	is aPoint."
	| aRectangle |
	aRectangle _ Rectangle fromUser: aPoint.
	^self new fromDisplay: aRectangle
