inspect
	"Build an inspector of my model, me, and my controller."

	| topView titleView className |
	topView _ StandardSystemView model: nil label: 'MVC inspector'
		minimumSize: 250 @ 250.

	titleView _ StringHolderView new.
	className _ model class name.
	titleView model: (StringHolder new contents: '	Model: ',
			((className at: 1) isVowel ifTrue: ['an '] ifFalse: ['a ']), className).
	titleView controller: Controller new.
	topView addSubView: titleView
		in: (0@0 extent: 1@0.06) borderWidth: 1.
	InspectorView view: (Inspector inspect: model)
		in: (0@0.06 extent: 1@0.34) of: topView.

	titleView _ StringHolderView new.
	className _ self class name.
	titleView model: (StringHolder new contents: '	View: ',
			((className at: 1) isVowel ifTrue: ['an '] ifFalse: ['a ']), className).
	titleView controller: Controller new.
	topView addSubView: titleView
		in: (0@0.4 extent: 1@0.06) borderWidth: 1.
	InspectorView view: (Inspector inspect: self)
		in: (0@0.46 extent: 1@0.24) of: topView.

	titleView _ StringHolderView new.
	className _ controller class name.
	titleView model: (StringHolder new contents: '	Controller: ',
			((className at: 1) isVowel ifTrue: ['an '] ifFalse: ['a ']), className).
	titleView controller: Controller new.
	topView addSubView: titleView
		in: (0@0.7 extent: 1@0.06) borderWidth: 1.
	InspectorView view: (Inspector inspect: controller)
		in: (0@0.76 extent: 1@0.24) of: topView.

	topView controller open
