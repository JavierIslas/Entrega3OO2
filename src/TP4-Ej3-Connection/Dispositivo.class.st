Class {
	#name : #Dispositivo,
	#superclass : #Object,
	#instVars : [
		'connection',
		'ringer',
		'display',
		'crcCalculator'
	],
	#category : #'TP4-Ej3-Connection'
}

{ #category : #'instance creation' }
Dispositivo class >> withCRCCalculator: aCRCCalculator connection: aConnection [
	^ self new withCRCCalculator: aCRCCalculator connection: aConnection
]

{ #category : #accessing }
Dispositivo >> conectarCon: aConnection [
	connection := aConnection.
	Transcript show: self ringer ring; cr.
	self display showBanner: aConnection
]

{ #category : #setter }
Dispositivo >> configurarCRC: aCRC [
	crcCalculator := aCRC 
]

{ #category : #accessing }
Dispositivo >> connection [
	^ connection
]

{ #category : #accessing }
Dispositivo >> crcCalculator [
	^ crcCalculator
]

{ #category : #accessing }
Dispositivo >> display [ 
	^ display
]

{ #category : #initialization }
Dispositivo >> initialize [
	ringer := Ringer new.
	display := DisplayDisp new
]

{ #category : #accessing }
Dispositivo >> ringer [ 
	^ ringer
]

{ #category : #commands }
Dispositivo >> send: data [
	^ self connection sendData: data crc: (self crcCalculator crcFor: data)
]

{ #category : #'instance creation' }
Dispositivo >> withCRCCalculator: aCRCCalculator connection: aConnection [
	crcCalculator := aCRCCalculator.
	connection := aConnection 
]
