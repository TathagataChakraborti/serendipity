(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM6 )
		( AT_MK2_ROOM3 )
		( AT_COMMX_ROOM10 )
		( AT_ROBOT_HALL6 )
	)
	(:goal
		(and 
		CONDUCTED_TRIAGE_COMMX_ROOM7 )
		)
	)
	(:metric minimize (total-cost))

)
