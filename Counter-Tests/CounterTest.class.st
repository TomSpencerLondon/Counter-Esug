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

{ #category : 'tests' }
CounterTest >> testCounterStartingAt5 [
	self assert: (Counter startingAt: 5) count equals: 5
]

{ #category : 'tests' }
CounterTest >> testDecrement [
	| c |
	c := Counter new.
	c count: 2 ; decrement; decrement.
	self assert: c count equals: 0
]

{ #category : 'tests' }
CounterTest >> testDecrementBy [
	| c |
	c := Counter new.
	c count: 10 ; decrementBy: 3.
	self assert: c count equals: 7
	
	
]

{ #category : 'tests' }
CounterTest >> testIncrement [
	| c |
	c := Counter new.
	c count: 0 ; increment; increment.
	self assert: c count equals: 2
]

{ #category : 'tests' }
CounterTest >> testInitialize [
	self assert: Counter new count equals: 0
]
