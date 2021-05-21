Class {
	#name : #DisplayDisp,
	#superclass : #Object,
	#category : #'TP4-Ej3-Connection'
}

{ #category : #behavior }
DisplayDisp >> showBanner: aConnection [
	Transcript show: aConnection pict; cr.
]
