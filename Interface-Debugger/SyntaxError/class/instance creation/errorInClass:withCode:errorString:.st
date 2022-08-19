errorInClass: aClass withCode: aString errorString: errorString
	"Answer a StandardSystemView whose model is an instance of me.
	The syntax error occurred in trying to add code, aString, to class, aClass."
	| aSyntaxError topView aListView aCodeView |
	Cursor normal show.
	aSyntaxError _ self new
			setClass: aClass
			code: aString
			processHandle: (ProcessHandle on: Processor activeProcess at: thisContext interrupted: false).
	topView _ StandardSystemView model: aSyntaxError label: 'Syntax Error' minimumSize: 300 @ 180.
	topView addSubView:
			(CodeView on: aSyntaxError aspect: #text change: #acceptText:from:
				menu: #textMenu initialSelection: errorString)
		in: (0@0 extent: 1@1) borderWidth: 1.
	topView controller openNoTerminateDisplayAt: Display extent // 2.
	Processor activeProcess suspend
