addMetaView: area on: aBrowser readOnly: ingored
	| mid |
	mid _ (area left + area right) * 0.5.
	self addSubView: (BooleanView on: aBrowser aspect: #meta
			label: 'instance' asText change: #meta: value: false)
		in: (area copy right: mid) borderWidth: 1.
	self addSubView: (BooleanView on: aBrowser aspect: #meta
			label: 'class' asText change: #meta: value: true)
		in: (area copy left: mid) borderWidth: 1
