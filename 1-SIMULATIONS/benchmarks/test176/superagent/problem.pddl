(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM9 )
		( AT_MK2_ROOM11 )
		( AT_COMMX_ROOM7 )
		( AT_ROBOT_HALL5 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM6 )
		)
	)
	(:metric minimize (total-cost))

)
