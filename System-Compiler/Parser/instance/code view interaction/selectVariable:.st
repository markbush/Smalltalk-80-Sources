selectVariable: name
	self editor selectFrom: self bareEndOfLastToken - name size + 1
					to: self bareEndOfLastToken
