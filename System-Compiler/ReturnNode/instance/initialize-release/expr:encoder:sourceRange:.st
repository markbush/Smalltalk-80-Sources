expr: e encoder: encoder sourceRange: range
	expr _ e.
	encoder noteSourceRange: range forNode: self
