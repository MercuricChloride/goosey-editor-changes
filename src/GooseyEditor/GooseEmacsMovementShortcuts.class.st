Class {
	#name : #GooseEmacsMovementShortcuts,
	#superclass : #Object,
	#category : #'GooseyEditor-Shortcuts'
}

{ #category : #accessing }
GooseEmacsMovementShortcuts class >> down [
	^ BrEditorShortcut moveCursorDown
		combination: BlKeyCombination builder control n build
]

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> forwardWord [
	^ BrEditorShortcut moveCursorToNextWord
		combination: BlKeyCombination builder alt f build;
		combinationForMacOS: BlKeyCombination builder alt f build.
]

{ #category : #accessing }
GooseEmacsMovementShortcuts class >> left [
	^ BrEditorShortcut moveCursorLeft
		combination: BlKeyCombination builder control b build.
]

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> prevWord [
	^ BrEditorShortcut moveCursorToPreviousWord
		combination: BlKeyCombination builder alt b build;
		combinationForMacOS: BlKeyCombination builder alt b build.
]

{ #category : #accessing }
GooseEmacsMovementShortcuts class >> right [
	^ BrEditorShortcut moveCursorRight
		combination: BlKeyCombination builder control f build
]

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> shortcuts [
	^ {
		self up.
		self down.
		self left.
		self right.
		
		self forwardWord.
		self prevWord.
		
		self toEnd.
		self toStart.
	}
]

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> toEnd [
	^ BrEditorShortcut moveCursorToLineEnd
		combination: BlKeyCombination builder control e build;
		combinationForMacOS: BlKeyCombination builder control e build.
]

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> toStart [
	^ BrEditorShortcut moveCursorToLineStart
		combination: BlKeyCombination builder control a build;
		combinationForMacOS: BlKeyCombination builder control a build.
]

{ #category : #accessing }
GooseEmacsMovementShortcuts class >> up [
	^ BrEditorShortcut moveCursorUp
		combination: BlKeyCombination builder control p build
]
