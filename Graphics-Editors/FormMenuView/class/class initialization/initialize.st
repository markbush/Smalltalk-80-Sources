initialize
	"The forms for the menu are typically stored on files.  In order to avoid reading
	them every time, they are stored in a collection that is a class variable,
	along with the offset, tool value, and initial visual state (on or off), that
	makes up the view of the form in the menu view."

	| offsets keys names formButton states |
	offsets _ OrderedCollection new: 21.
	#( 0 64 96 128 160 192 256 288 320 352 420) do: [:i | offsets addLast: i@0]. "First row"
	#( 0 64 96 128 160 192 256 304 352 420) do: [:i | offsets addLast: i@48].		"Second row"
	offsets _ offsets asArray.
	keys _ #($a $s $d $f $g $h $j $k $l $; $' $z $x $c $v $b $n $m $, $. $/ ).	"Keyboard"
	states _
		#(false false true false false false true false false false false false false
		false false false true false false false false ).		"Initial states of buttons"
	names _
		#('select.form.' 'singlecopy.form.' 'repeatcopy.form.' 'line.form.' 'curve.form.'
		'block.form' 'over.form.' 'under.form.' 'reverse.form.' 'erase.form.' 'in.form.'
		'magnify.form.' 'white.form' 'lightgray.form' 'gray.form' 'darkgray.form' 'black.form'
		'xgrid.form.' 'ygrid.form.' 'togglegrids.form.' 'out.form.' ).	"Files of button images"
	FormButtons _ OrderedCollection new.
	1 to: 21 do:
		[:index |
		formButton _ FormButtonCache new.
		formButton form: (Form readFrom: (names at: index)).
		formButton offset: (offsets at: index).
		formButton value: (keys at: index).
		formButton initialState: (states at: index).
		FormButtons addLast: formButton].
	SpecialBorderForm  _ Form readFrom: 'specialborderform.form'.
	BorderForm _ Form readFrom: 'borderform.form'

	"FormMenuView initialize"
