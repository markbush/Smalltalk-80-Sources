displayHeight: height
	"Make the height of the current display screen form be the argument, height."

	^self displayExtent: self boundingBox width @ height
