Extension { #name : #GtTextualCoder }

{ #category : #'*GooseyEditor' }
GtTextualCoder >> emacsMovement: anAst into: coderAddOns from: aCoderViewModel [
	<gtAstCoderAddOns: 69>
	coderAddOns addShortcuts: GooseEmacsMovementShortcuts shortcuts.
]
