(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM5 )
		( AT_MK2_ROOM11 )
		( AT_COMMX_ROOM10 )
		( AT_ROBOT_HALL6 )
	)
	(:goal
		(and 
		CONDUCTED_TRIAGE_COMMX_ROOM1 )
		)
	)
	(:metric minimize (total-cost))

)