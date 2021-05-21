Class {
	#name : #'CRC_Calculator',
	#superclass : #Object,
	#category : #'TP4-Ej3-Connection'
}

{ #category : #behavior }
CRC_Calculator >> crcFor: data [
	^ self subclassResponsibility 
]
