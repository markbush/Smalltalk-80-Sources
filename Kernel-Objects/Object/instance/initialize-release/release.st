release
	"Remove references to objects that may refer to the receiver. Answers self.
	This message should be overidden by subclasses with any cycles, in which
	case the subclass should also include the expression super release."

	self breakDependents
