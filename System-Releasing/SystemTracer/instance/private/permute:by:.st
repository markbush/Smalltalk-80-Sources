permute: vec by: perm
	| copy j len inverse |
	(perm isMemberOf: Interval) ifTrue: [^perm"no-op for 1~n identity"].
	len _ vec size.
	copy _ Array new: len.
	inverse _ Array new: len.
	1 to: len do:
		[:i |
		(j _ perm at: i) == nil
			ifFalse:
				[copy at: i put: (vec at: j).
				inverse at: j put: i]].
	1 to: len do: [:i | vec at: i put: (copy at: i)].
	^inverse
