Class {
	#name : 'TallyBoardTest',
	#superclass : 'TestCase',
	#category : 'Counter-Tests',
	#package : 'Counter-Tests'
}

{ #category : 'tests' }
TallyBoardTest >> testBumpingCountsByName [
	| b |
	b := TallyBoard new.
	b bump: 'a'; bump: 'a'; bump: 'b'.
	self assert: (b countFor: 'a') equals: 2.
	self assert: (b countFor: 'b') equals: 1
]

{ #category : 'tests' }
TallyBoardTest >> testBusiestForNameOfCounterWithHighestCount [
	| b |
	b := TallyBoard new.
	b bump: 'a'; bump: 'a'; bump: 'b'.
	self assert: (b busiest) equals: 'a'
]

{ #category : 'tests' }
TallyBoardTest >> testBusiestOnEmptyTallyBoardRaisesError [
	| b |
	b := TallyBoard new.
	self should: [b busiest] raise: Error
]

{ #category : 'tests' }
TallyBoardTest >> testBusiestTieReturnsFirstAlphabetically [
	| b |
	b := TallyBoard new.
	b bump: 'b'; bump: 'b'; bump: 'a'; bump: 'a'; bump: 'c'.
	self assert: (b busiest) equals: 'a'
]

{ #category : 'tests' }
TallyBoardTest >> testNamesAbove3 [
	| b |
	b := TallyBoard new.
	b bump: 'a'; bump: 'a'; bump: 'a'; bump: 'a'; bump: 'b'.
	self assert: (b namesAbove: 3) equals: #('a')
]

{ #category : 'tests' }
TallyBoardTest >> testTotalAfterBump [
	| b |
	b := TallyBoard new.
	b bump: 'a'; bump: 'a'; bump: 'b'.
	self assert: (b total) equals: 3
]

{ #category : 'tests' }
TallyBoardTest >> testUnknownNameIsZero [
	self assert: (TallyBoard new countFor: 'ghost') equals: 0
]
