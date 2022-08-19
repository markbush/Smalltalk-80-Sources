crossedX
	"This condition will sometimes be reached 'legally' during printing, when, for instance the space that caused the line to wrap actually extends over the right  boundary.  This character is allowed to print, even though it is technically outside or straddling the clippingRectangle since it is in the normal case not visible and is in any case appropriately clipped by the scanner."

	self checkEmphasis.
	^true
