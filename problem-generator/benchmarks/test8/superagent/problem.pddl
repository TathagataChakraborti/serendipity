(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM13 )
		( AT_MK2_ROOM8 )
		( AT_COMMX_HALL6 )
		( AT_ROBOT_HALL6 )
	)
	(:goal
		(and 
		CONDUCTED_TRIAGE_COMMX_ROOM11 )
		)
	)
	(:metric minimize (total-cost))

)
