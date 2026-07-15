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
