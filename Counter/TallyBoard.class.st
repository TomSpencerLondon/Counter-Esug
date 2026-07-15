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
TallyBoard >> countFor: aName [ 
	^ (counters at: aName ifAbsent: [ Counter new ]) count
]

{ #category : 'initialization' }
TallyBoard >> initialize [ 
	counters := Dictionary new
]
