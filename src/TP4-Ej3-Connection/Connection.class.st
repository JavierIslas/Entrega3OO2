Class {
	#name : #Connection,
	#superclass : #Object,
	#category : #'TP4-Ej3-Connection'
}

{ #category : #behavior }
Connection >> pict [
	^ self subclassResponsibility 
]

{ #category : #behavior }
Connection >> sendData: data crc: aCRC [
^ self subclassResponsibility 
]
