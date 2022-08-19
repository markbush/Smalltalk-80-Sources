receiver: rcvr selector: selNode arguments: args precedence: p
	"decompile"

	self receiver: rcvr
		arguments: args
		precedence: p.
	special _ MacroSelectors indexOf: selNode key.
	selector _ selNode
