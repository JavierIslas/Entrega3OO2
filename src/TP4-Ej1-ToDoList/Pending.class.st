Class {
	#name : #Pending,
	#superclass : #State,
	#category : #'TP4-Ej1-ToDoList'
}

{ #category : #behavior }
Pending >> finish: aToDoItem [
	^ self
]

{ #category : #accessing }
Pending >> start: aToDoItem [
	aToDoItem state: InProgress new.
	aToDoItem startTime: DateAndTime now
]

{ #category : #behavior }
Pending >> togglePause: aToDoItem [
	^ self error: 'Accion invalida. La tarea no ha sido iniciada'
]

{ #category : #acccessing }
Pending >> workedTime: aToDoItem [ 
	^ self error: 'La tarea no ha sido inciada'
]
