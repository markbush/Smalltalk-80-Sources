setStopConditions
	"Set default stop conditions for the font."

	spaceWidth _ font widthOf: Space.
	sourceForm _ font glyphs.
	xTable _ font xTable.
	height _ font height.
	stopConditions _ font stopConditions.
	stopConditions at: Space asInteger + 1 put: #space.
	stopConditions at: Tab asInteger + 1 put: #tab.
	stopConditions at: CR asInteger + 1 put: #cr.
	stopConditions at: EndOfRun put: #endOfRun.
	stopConditions at: CrossedX put: #crossedX.

	stopConditions at: Ctrls asInteger + 1 put: #onePixelSpace.
	stopConditions at: CtrlS asInteger + 1 put: #onePixelBackspace.
	stopConditions at: Ctrlz asInteger + 1 put: #characterNotInFont.
