moveTo: newLoc restoring: background
	"Move an image to a new location on the Display, restoring the background
	without causing flashing.  Background must be a Form containing
	the bits to be restored at the previous location (its offset), and this method
	will update its bits and offset appropriately"

	| location saveAll rect1 rect2 bothRects |
	"This method should be rewritten to use the offset in background directly"
	(location _ background offset) = newLoc ifTrue: [^background].
	background offset: 0@0.
	rect1 _ location extent: self extent.
	rect2 _ newLoc extent: self extent.
	bothRects _ rect1 merge: rect2.
	(rect1 intersects: rect2)
		ifTrue:  "When overlap, buffer background for both rectangles"
			[saveAll _ Form fromDisplay: bothRects.
			background displayOn: saveAll at: rect1 origin - bothRects origin.
			"now saveAll is clean background; get new bits for background"
			background copy: (0@0 extent: self extent)
				from: rect2 origin - bothRects origin
				in: saveAll
				rule: Form over.
			self displayOn: saveAll at: rect2 origin - bothRects origin.
			saveAll displayOn: Display at: bothRects origin]
		ifFalse: "If no overlap, do the simple thing (bothrects might be too big)"
			[background displayOn: Display at: location.
			background fromDisplay: rect2.
			self displayOn: Display at: newLoc].
	^ background offset: newLoc
