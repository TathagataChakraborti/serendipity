(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM6 )
		( AT_MK2_ROOM9 )
		( AT_COMMX_HALL7 )
		( AT_ROBOT_ROOM2 )
	)
	(:goal
		(and 
		( CONDUCTED_TRIAGE_COMMX_ROOM13 )
		)
	)
	(:metric minimize (total-cost))

)
