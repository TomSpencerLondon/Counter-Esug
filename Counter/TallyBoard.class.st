"
I am a tally board: I keep a running count for each of a set of named things.

Send me #bump: with a name and I add one to that name's count, creating a fresh
Counter the first time a name is seen. I can then report the count for any single
name, the names whose count is above a threshold, and the grand total across all
names.

Public API and Key Messages
- bump: aName          record one occurrence of aName (auto-creates its Counter)
- countFor: aName      the current count for aName, or 0 if it was never bumped
- namesAbove: aNumber  the names whose count is strictly greater than aNumber
- total                the sum of every name's count

Example:
	| board |
	board := TallyBoard new.
	board bump: 'apple'; bump: 'apple'; bump: 'pear'.
	board countFor: 'apple'.   ""=> 2""
	board namesAbove: 1.       ""=> #('apple')""
	board total.               ""=> 3""

Internal Representation and Key Implementation Points

    Instance Variables
	counters:  <Dictionary>  keyed by name, each value a Counter holding that
	           name's running total. Created empty in #initialize.

"
Class {
	#name : 'TallyBoard',
	#superclass : 'Object',
	#instVars : [
		'counters'
	],
	#category : 'Counter',
	#package : 'Counter'
}

{ #category : 'collecting leaves' }
TallyBoard >> bump: aName [ 
	(counters at: aName ifAbsentPut: [ Counter new ]) increment 
]

{ #category : 'collecting leaves' }
TallyBoard >> busiest [
	^ counters keys detectMax: [ :name | (counters at: name) count ]
]

{ #category : 'collecting leaves' }
TallyBoard >> countFor: aName [ 
	^ (counters at: aName ifAbsent: [ Counter new ]) count
]

{ #category : 'initialization' }
TallyBoard >> initialize [ 
	counters := Dictionary new
]

{ #category : 'collecting leaves' }
TallyBoard >> namesAbove: count [ 
	^ counters keys select: [ :name | (counters at: name) count > count]
]

{ #category : 'collecting leaves' }
TallyBoard >> total [
	^ counters values inject: 0 into: [ :sum :c |  sum + c count]
]
