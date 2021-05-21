Class {
	#name : #WiFiConn,
	#superclass : #Connection,
	#instVars : [
		'pict'
	],
	#category : #'TP4-Ej3-Connection'
}

{ #category : #initialization }
WiFiConn >> initialize [
	pict := 'WI-FI'
]

{ #category : #behavior }
WiFiConn >> pict [
	^ pict
]

{ #category : #behavior }
WiFiConn >> sendData: data crc: aCRC [
	Transcript
		show: 'WI-FI';
		cr;
		show: data;
		cr;
		show: aCRC
]
