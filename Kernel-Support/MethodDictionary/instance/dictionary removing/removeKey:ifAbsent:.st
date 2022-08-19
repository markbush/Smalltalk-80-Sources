removeKey: key ifAbsent: errorBlock
	"Remove the key from a copy and then use become: to effect and atomic update"
	self become: (self copy removeDangerouslyKey: key ifAbsent: [^errorBlock value])
