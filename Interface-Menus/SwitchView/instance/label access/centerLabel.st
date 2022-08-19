centerLabel
	"Align the center of the frame of the label with the center of the receiver's window."

	label == nil
		ifFalse:
			[label
				align: label boundingBox center
				with: self getWindow center]
