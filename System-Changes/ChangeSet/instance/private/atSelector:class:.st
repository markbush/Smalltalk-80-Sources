atSelector: selector class: class
	^(methodChanges at: class name ifAbsent: [^#none])
		at: selector ifAbsent: [#none]
