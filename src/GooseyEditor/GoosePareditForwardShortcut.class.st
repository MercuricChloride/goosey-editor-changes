Class {
	#name : #GoosePareditForwardShortcut,
	#superclass : #GtPareditMovementShortcut,
	#category : #'GooseyEditor-Shortcuts'
}

{ #category : #'as yet unclassified' }
GoosePareditForwardShortcut >> initialize [
	super initialize.
	combination := BlKeyCombination builder alt control f build
]

{ #category : #'as yet unclassified' }
GoosePareditForwardShortcut >> performOnEditor: aBrTextEditor element: aBrEditorElement coderViewModel: aSourceCoderViewModel dueTo: aShortcutEvent [
	self
		forEditor: aBrTextEditor
		selectionIntervalDo: [ :aSelectionInterval |
			aSourceCoderViewModel coder
				moveStatementsOrCascadesUpWithin: aSelectionInterval
				in: aSourceCoderViewModel ]
		orCursorStringPositionDo: [ :aCursorTextPosition |
			self moveForwardFrom: aSourceCoderViewModel position: aCursorTextPosition ]
]
