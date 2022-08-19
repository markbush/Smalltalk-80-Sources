shapeFill: aMask interiorPoint: interiorPoint
	"Fill the interior of some outlined region according to mask and rule.
	InteriorPoint marks a location in the interior or the region.  A mark is
	placed at this point as a seed, then the seed is smeared into a blob
	until there is no change in the blob when it fills the region.
	Uses the upper left corner of the display screen for computing the blob"

	| dirs smearForm previousSmear all cycle noChange |
	all _ self boundingBox.
	smearForm _ Form extent: self extent.
	smearForm valueAt: interiorPoint put: 1.		"Place a seed in the interior"
	previousSmear _ smearForm deepCopy.
	dirs _ Array with: 1@0 with: -1@0 with: 0@1 with: 0@-1.
	cycle _ 0.
	[(cycle _ cycle+1) \\ 10 = 0 and:   "check for no change every 10 smears"
		[previousSmear copy: all from: 0@0 in: smearForm rule: Form reverse.
		noChange _ previousSmear isAllWhite.
		previousSmear copy: all from: 0@0 in: smearForm rule: Form over.
		noChange]]
		whileFalse:
			[dirs do:
				[:dir |    "smear in each of the four directions"
				smearForm copy: all from: dir in: smearForm rule: Form under.
				"After each smear, trim around the region border"
				smearForm copy: all from: 0@0 in: self rule: Form erase]].
	"Now paint the filled region in me with aMask"
	smearForm displayOn: self at: 0@0 clippingBox: self boundingBox
		rule: Form under mask: aMask
