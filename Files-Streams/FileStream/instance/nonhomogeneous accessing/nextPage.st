nextPage
	"Answer the receiver as a FileStream on the next page or nil if there is no next page."
	^self read: page pageNumber + 1
