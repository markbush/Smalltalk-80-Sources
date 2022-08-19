reallyBindTemp: name
	"private;  assumes name not in scope yet"
	| node |
	node _ self newTemp: name.
	scopeTable at: name put: node.
	^node
