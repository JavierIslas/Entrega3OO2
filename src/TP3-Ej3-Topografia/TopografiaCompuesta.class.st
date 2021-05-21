Class {
	#name : #TopografiaCompuesta,
	#superclass : #Topografia,
	#instVars : [
		'topografias'
	],
	#category : #'TP3-Ej3-Topografia'
}

{ #category : #'instance creation' }
TopografiaCompuesta class >> newTopografias: unasTopografias [
	^ self new newTopografias: unasTopografias 
]

{ #category : #'adding item' }
TopografiaCompuesta >> agregarTopografia: unaTopografia [
	self topografia size < 4
		ifTrue: [ topografias add: unaTopografia ]
]

{ #category : #calculations }
TopografiaCompuesta >> calcularProporcion [
	^(topografias
		sum: [ :topografia | topografia proporcion ]) / 4.
]

{ #category : #boolean }
TopografiaCompuesta >> esIgual: unaTopografia [ 
	^ unaTopografia esIgualCompuesta: self
]

{ #category : #boolean }
TopografiaCompuesta >> esIgualAgua [ 
	^ false
]

{ #category : #boolean }
TopografiaCompuesta >> esIgualCompuesta: unaTopografia [
	| topografiasArray unaTopografiaArray |
	topografiasArray := self topografia asArray.
	unaTopografiaArray := unaTopografia topografia asArray.
	^ (1 to: topografiasArray size)
		allSatisfy: [ :i | (topografiasArray at: i) esIgual: (unaTopografiaArray at: i) ]
]

{ #category : #boolean }
TopografiaCompuesta >> esIgualTierra [ 
	^false
]

{ #category : #'instance creation' }
TopografiaCompuesta >> newTopografias: unasTopografias [
	topografias := unasTopografias takeFirst: 4.
]

{ #category : #accessing }
TopografiaCompuesta >> proporcion [
	^ self calcularProporcion
]

{ #category : #accessing }
TopografiaCompuesta >> topografia [
	^topografias
]
