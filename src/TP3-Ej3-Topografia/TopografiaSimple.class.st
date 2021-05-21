Class {
	#name : #TopografiaSimple,
	#superclass : #Topografia,
	#category : #'TP3-Ej3-Topografia'
}

{ #category : #boolean }
TopografiaSimple >> esIgual: unaTopografia [
	^ self subclassResponsibility
]

{ #category : #boolean }
TopografiaSimple >> esIgualAgua [
	^ self subclassResponsibility
]

{ #category : #boolean }
TopografiaSimple >> esIgualCompuesta: unaTopografia [ 
	^ false 
]

{ #category : #boolean }
TopografiaSimple >> esIgualTierra [
	^ self subclassResponsibility
]

{ #category : #accessing }
TopografiaSimple >> proporcion [
	^proporcion
]

{ #category : #accessing }
TopografiaSimple >> topografia [
	^self
]
