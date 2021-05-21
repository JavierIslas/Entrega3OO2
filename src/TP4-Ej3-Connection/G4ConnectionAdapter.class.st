Class {
	#name : #G4ConnectionAdapter,
	#superclass : #Connection,
	#instVars : [
		'_4gconnection'
	],
	#category : #'TP4-Ej3-Connection'
}

{ #category : #acccessing }
G4ConnectionAdapter >> _4GConnection [
	^_4gconnection 
]

{ #category : #initialization }
G4ConnectionAdapter >> initialize [ 
	_4gconnection := G4Connection new.
]

{ #category : #behavior }
G4ConnectionAdapter >> pict [
	^ _4gconnection symb
]

{ #category : #behavior }
G4ConnectionAdapter >> sendData: data crc: aCRC [
	self _4GConnection transmit: data crc: aCRC
]
