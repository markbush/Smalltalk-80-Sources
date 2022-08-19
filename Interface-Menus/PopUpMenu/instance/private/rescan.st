rescan
	"cause me to be recreated for system changes like fonts"

	labelString == nil
		ifFalse: [self labels: labelString font: font lines: lineArray]

	"PopUpMenu allInstancesDo: [:x | x rescan]."
