displayExtent: extent
	"Make the width and height of the current display screen form be extent."

	| w h |
	w _ extent x truncateTo: 32.
	h _ extent y truncateTo: 2.
	DisplayScreen currentDisplay:
		(DisplayScreen new
			extent: w @ 16
			offset: 0 @ 0
			bits: (DisplayBitmap new: w // 16 * 16)).
	"shrink to 16 to release old bitmap"
	DisplayScreen currentDisplay:
		(DisplayScreen new
			extent: w @ h
			offset: 0 @ 0
			bits: (DisplayBitmap new: w // 16 * h)).
	"now grow to new size"
	ScheduledControllers restore
