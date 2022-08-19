indicatorOnDuring: aBlockContext
	"Indicate the receiver during the execution of aBlockContext by
	complementing the label (or a portion of the display box if no label is
	defined). "

	self indicatorReverse.
	self highlight.
	aBlockContext value.
	self highlight.
	self indicatorReverse
