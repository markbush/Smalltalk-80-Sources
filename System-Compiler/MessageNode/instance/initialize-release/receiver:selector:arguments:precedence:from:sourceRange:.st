receiver: rcvr selector: selName arguments: args precedence: p from: encoder sourceRange: range
	"compile"

	encoder noteSourceRange: range forNode: self.
	^self
		receiver: rcvr
		selector: selName
		arguments: args
		precedence: p
		from: encoder
