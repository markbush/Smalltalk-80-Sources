clear: aColor
	"Use aColor to paint the display box (including the border, see
	View|displayBox) of the receiver."

	aColor ~= nil ifTrue: [Display fill: self displayBox mask: aColor]
