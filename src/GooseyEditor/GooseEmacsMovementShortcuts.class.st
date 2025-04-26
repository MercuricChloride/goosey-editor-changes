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

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> killCharacter [
	^ BrEditorShortcut deleteOneLetterAfterCursor
		combination: BlKeyCombination builder control d build
]

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> killWord [
	^ BrEditorShortcut deleteNextWord
		combination: BlKeyCombination builder alt d build
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
GooseEmacsMovementShortcuts class >> selectLeft [
	^ BrEditorShortcut selectLetterBeforeCursor
		combination: BlKeyCombination builder control shift b build.
]

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> selectNextWord [
	^ BrEditorShortcut selectWordAfterCursor
		combination: BlKeyCombination builder alt shift f build;
		combinationForMacOS: BlKeyCombination builder alt shift f build.
]

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> selectPreviousWord [
	^ BrEditorShortcut selectWordBeforeCursor
		combination: BlKeyCombination builder alt shift b build;
		combinationForMacOS: BlKeyCombination builder alt shift b build.
]

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> selectRight [
	^ BrEditorShortcut selectLetterAfterCursor
		combination: BlKeyCombination builder control shift f build.
]

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> selectToEnd [
		^ BrEditorShortcut new
		  name: 'Select to the line end';
		  description:
			  'Moves the cursor to the end of the current line and selects all text.';
		  combination: BlKeyCombination builder control shift e build;
		  performBlock: [ :aBrTextEditor | 
			  aBrTextEditor selecter
				  extendToLineEnd;
				  select ];
		  yourself
]

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> selectoToStart [
		^ BrEditorShortcut new
		  name: 'Select to the line start';
		  description:
			  'Moves the cursor to the start of the current line and selects all text.';
		  combination: BlKeyCombination builder control shift a build;
		  performBlock: [ :aBrTextEditor | 
			  aBrTextEditor selecter
				  extendToLineStart;
				  select ];
		  yourself
]

{ #category : #'as yet unclassified' }
GooseEmacsMovementShortcuts class >> shortcuts [
	^ {
		self up.
		self down.
		self left.
		self selectLeft.
		self right.
		self selectRight.
		
		self forwardWord.
		self selectNextWord.
		self prevWord.
		self selectPreviousWord.
		
		self toEnd.
		self selectToEnd.
		self toStart.
		self selectoToStart.
		
		self killCharacter.
		self killWord.
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
