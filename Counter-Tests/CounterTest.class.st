Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'Counter-Tests',
	#package : 'Counter-Tests'
}

{ #category : 'tests' }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]
