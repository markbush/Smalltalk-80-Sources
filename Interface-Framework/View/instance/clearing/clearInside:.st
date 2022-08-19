clearInside: aColor
	"Use aColor to paint the inset display box (excluding the border, see
	View|insetDisplayBox) of the receiver."

	aColor ~= nil ifTrue: [Display fill: self insetDisplayBox mask: aColor]
