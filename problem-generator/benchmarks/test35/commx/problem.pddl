(define
	(problem grounded-HALLWAY1)
	(:domain grounded-ACTION)
	(:init
		(= (total-cost) 0)
		( AT_MK1_ROOM7 )
		( AT_MK2_ROOM9 )
		( AT_COMMX_ROOM6 )
	)
	(:goal
		(and 
		CONDUCTED_TRIAGE_COMMX_ROOM9 )
		)
	)
	(:metric minimize (total-cost))

)