Class {
	#name : #Paused,
	#superclass : #State,
	#category : #'TP4-Ej1-ToDoList'
}

{ #category : #behavior }
Paused >> finish: aToDoItem [
	aToDoItem state: Finished new.
	aToDoItem endTime: DateAndTime now
]

{ #category : #accessing }
Paused >> start: aToDoItem [
	^ self
]

{ #category : #behavior }
Paused >> togglePause: aToDoItem [ 
	aToDoItem state: (InProgress new)
]

{ #category : #acccessing }
Paused >> workedTime: aToDoItem [ 
	^ (DateAndTime now - aToDoItem startTime) 
]
