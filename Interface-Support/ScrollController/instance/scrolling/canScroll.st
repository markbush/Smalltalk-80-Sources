canScroll
	"Answer whether there is information that is not visible and can be seen
	by scrolling."
	^marker region height < scrollBar inside height
