"
A class for incrementing and decrementing the counter
"
Class {
	#name : 'Counter',
	#superclass : 'Object',
	#instVars : [
		'count'
	],
	#classInstVars : [
		'increment'
	],
	#category : 'Counter',
	#package : 'Counter'
}

{ #category : 'accessing' }
Counter >> count [
	^ count
]

{ #category : 'accessing' }
Counter >> count: anInteger [ 
	count := anInteger
]

{ #category : 'accessing' }
Counter >> decrement [
	count := count - 1
]

{ #category : 'accessing' }
Counter >> decrementBy: anInteger [ 
	count := count - anInteger
]

{ #category : 'accessing' }
Counter >> increment [
	count := count + 1
]

{ #category : 'initialization' }
Counter >> initialize [
	count := 0
]

{ #category : 'printing' }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value: ', count printString.
]
