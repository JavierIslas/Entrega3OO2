Class {
	#name : #G4Connection,
	#superclass : #Object,
	#instVars : [
		'symb'
	],
	#category : #'TP4-Ej3-Connection'
}

{ #category : #initialization }
G4Connection >> initialize [
	symb := '4G'
]

{ #category : #accessing }
G4Connection >> symb [
	^symb
]

{ #category : #behavior }
G4Connection >> transmit: data crc: aCRC [
	Transcript
		show: '4G';
		cr;
		show: data;
		cr;
		show: aCRC
]
