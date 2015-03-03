(define
	(domain grounded-ACTION)
	(:requirements :strips :action-costs)
	(:predicates
		( AT_COMMX_HALL5 )
		( AT_COMMX_HALL4 )
		( AT_COMMX_HALL3 )
		( AT_COMMX_HALL2 )
		( AT_COMMX_HALL1 )
		( AT_COMMX_ROOM9 )
		( AT_COMMX_ROOM8 )
		( AT_COMMX_ROOM4 )
		( AT_COMMX_ROOM3 )
		( AT_COMMX_ROOM2 )
		( AT_COMMX_ROOM1 )
		( HAS_MEDKIT_COMMX )
		( HAS_COMMX_MK1 )
		( HAS_COMMX_MK2 )
		( DELIVERED_COMMX_MK1_ROOM1 )
		( LOC_HAS_MEDKIT_ROOM1 )
		( AT_MK1_ROOM1 )
		( DELIVERED_COMMX_MK1_ROOM2 )
		( LOC_HAS_MEDKIT_ROOM2 )
		( DELIVERED_COMMX_MK1_ROOM3 )
		( LOC_HAS_MEDKIT_ROOM3 )
		( AT_MK1_ROOM3 )
		( DELIVERED_COMMX_MK1_ROOM4 )
		( LOC_HAS_MEDKIT_ROOM4 )
		( AT_MK1_ROOM4 )
		( DELIVERED_COMMX_MK1_ROOM5 )
		( LOC_HAS_MEDKIT_ROOM5 )
		( AT_MK1_ROOM5 )
		( DELIVERED_COMMX_MK1_ROOM8 )
		( LOC_HAS_MEDKIT_ROOM8 )
		( AT_MK1_ROOM8 )
		( DELIVERED_COMMX_MK1_ROOM9 )
		( LOC_HAS_MEDKIT_ROOM9 )
		( AT_MK1_ROOM9 )
		( DELIVERED_COMMX_MK1_HALL1 )
		( LOC_HAS_MEDKIT_HALL1 )
		( AT_MK1_HALL1 )
		( DELIVERED_COMMX_MK1_HALL2 )
		( LOC_HAS_MEDKIT_HALL2 )
		( AT_MK1_HALL2 )
		( DELIVERED_COMMX_MK1_HALL3 )
		( LOC_HAS_MEDKIT_HALL3 )
		( AT_MK1_HALL3 )
		( DELIVERED_COMMX_MK1_HALL4 )
		( LOC_HAS_MEDKIT_HALL4 )
		( AT_MK1_HALL4 )
		( DELIVERED_COMMX_MK1_HALL5 )
		( LOC_HAS_MEDKIT_HALL5 )
		( AT_MK1_HALL5 )
		( DELIVERED_COMMX_MK2_ROOM1 )
		( AT_MK2_ROOM1 )
		( DELIVERED_COMMX_MK2_ROOM2 )
		( AT_MK2_ROOM2 )
		( DELIVERED_COMMX_MK2_ROOM3 )
		( DELIVERED_COMMX_MK2_ROOM4 )
		( AT_MK2_ROOM4 )
		( DELIVERED_COMMX_MK2_ROOM5 )
		( AT_MK2_ROOM5 )
		( DELIVERED_COMMX_MK2_ROOM8 )
		( AT_MK2_ROOM8 )
		( DELIVERED_COMMX_MK2_ROOM9 )
		( AT_MK2_ROOM9 )
		( DELIVERED_COMMX_MK2_HALL1 )
		( AT_MK2_HALL1 )
		( DELIVERED_COMMX_MK2_HALL2 )
		( AT_MK2_HALL2 )
		( DELIVERED_COMMX_MK2_HALL3 )
		( AT_MK2_HALL3 )
		( DELIVERED_COMMX_MK2_HALL4 )
		( AT_MK2_HALL4 )
		( DELIVERED_COMMX_MK2_HALL5 )
		( AT_MK2_HALL5 )
		( CONDUCTED_TRIAGE_COMMX_ROOM1 )
		( CONDUCTED_TRIAGE_COMMX_ROOM2 )
		( CONDUCTED_TRIAGE_COMMX_ROOM3 )
		( CONDUCTED_TRIAGE_COMMX_ROOM4 )
		( CONDUCTED_TRIAGE_COMMX_ROOM5 )
		( CONDUCTED_TRIAGE_COMMX_ROOM8 )
		( CONDUCTED_TRIAGE_COMMX_ROOM9 )
		( CONDUCTED_TRIAGE_COMMX_HALL1 )
		( CONDUCTED_TRIAGE_COMMX_HALL2 )
		( CONDUCTED_TRIAGE_COMMX_HALL3 )
		( CONDUCTED_TRIAGE_COMMX_HALL4 )
		( CONDUCTED_TRIAGE_COMMX_HALL5 )
		( AT_MK2_ROOM3 )
		( AT_MK1_ROOM2 )
		( AT_COMMX_ROOM5 )
	) 
	(:functions (total-cost))
	(:action NOOP_COMMX
		:parameters ()
		:precondition
		(and
		)
		:effect
		(and
			(increase (total-cost) 0.01)
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL5_HALL4
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL4 )
			(not ( AT_COMMX_HALL5 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL5
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL5 )
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL5 ))
			(not ( LOC_HAS_MEDKIT_HALL5 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL4
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL4 )
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL4 ))
			(not ( LOC_HAS_MEDKIT_HALL4 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL3
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL3 )
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL3 ))
			(not ( LOC_HAS_MEDKIT_HALL3 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL2
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL2 )
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL2 ))
			(not ( LOC_HAS_MEDKIT_HALL2 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_HALL1
		:parameters ()
		:precondition
		(and
			( AT_MK2_HALL1 )
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_HALL1 ))
			(not ( LOC_HAS_MEDKIT_HALL1 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM9
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM9 )
			( AT_COMMX_ROOM9 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM9 ))
			(not ( LOC_HAS_MEDKIT_ROOM9 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM8
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM8 )
			( AT_COMMX_ROOM8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM8 ))
			(not ( LOC_HAS_MEDKIT_ROOM8 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM5
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM5 )
			( AT_COMMX_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM5 ))
			(not ( LOC_HAS_MEDKIT_ROOM5 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM4 )
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM4 ))
			(not ( LOC_HAS_MEDKIT_ROOM4 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM2
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM2 )
			( AT_COMMX_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM2 ))
			(not ( LOC_HAS_MEDKIT_ROOM2 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM1
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM1 )
			( AT_COMMX_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM1 ))
			(not ( LOC_HAS_MEDKIT_ROOM1 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL5
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL5 )
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL5 ))
			(not ( LOC_HAS_MEDKIT_HALL5 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL4
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL4 )
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL4 ))
			(not ( LOC_HAS_MEDKIT_HALL4 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL3
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL3 )
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL3 ))
			(not ( LOC_HAS_MEDKIT_HALL3 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL2
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL2 )
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL2 ))
			(not ( LOC_HAS_MEDKIT_HALL2 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_HALL1
		:parameters ()
		:precondition
		(and
			( AT_MK1_HALL1 )
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_HALL1 ))
			(not ( LOC_HAS_MEDKIT_HALL1 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM9
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM9 )
			( AT_COMMX_ROOM9 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM9 ))
			(not ( LOC_HAS_MEDKIT_ROOM9 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM8
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM8 )
			( AT_COMMX_ROOM8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM8 ))
			(not ( LOC_HAS_MEDKIT_ROOM8 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM5
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM5 )
			( AT_COMMX_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM5 ))
			(not ( LOC_HAS_MEDKIT_ROOM5 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM4 )
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM4 ))
			(not ( LOC_HAS_MEDKIT_ROOM4 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM3
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM3 )
			( AT_COMMX_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM3 ))
			(not ( LOC_HAS_MEDKIT_ROOM3 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM1
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM1 )
			( AT_COMMX_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM1 ))
			(not ( LOC_HAS_MEDKIT_ROOM1 ))
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL5
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL5 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL4
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL4 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL3
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL3 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL2
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL2 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_HALL1
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_HALL1 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM9
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM9 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM9 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM8
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM8 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM5
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM5 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM4
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM4 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM3
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM3 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM2
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM2 )
		)
	)
	(:action CONDUCT_TRIAGE_COMMX_ROOM1
		:parameters ()
		:precondition
		(and
			( HAS_MEDKIT_COMMX )
			( AT_COMMX_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( CONDUCTED_TRIAGE_COMMX_ROOM1 )
		)
	)
	(:action MOVE_COMMX_ROOM1_HALL1
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL1 )
			(not ( AT_COMMX_ROOM1 ))
		)
	)
	(:action MOVE_COMMX_ROOM2_HALL2
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL2 )
			(not ( AT_COMMX_ROOM2 ))
		)
	)
	(:action MOVE_COMMX_ROOM3_HALL3
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL3 )
			(not ( AT_COMMX_ROOM3 ))
		)
	)
	(:action MOVE_COMMX_ROOM4_HALL4
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL4 )
			(not ( AT_COMMX_ROOM4 ))
		)
	)
	(:action MOVE_COMMX_ROOM8_HALL3
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL3 )
			(not ( AT_COMMX_ROOM8 ))
		)
	)
	(:action MOVE_COMMX_ROOM9_HALL4
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM9 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL4 )
			(not ( AT_COMMX_ROOM9 ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL5
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL5 )
			( LOC_HAS_MEDKIT_HALL5 )
			( AT_MK2_HALL5 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL4
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL4 )
			( LOC_HAS_MEDKIT_HALL4 )
			( AT_MK2_HALL4 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL3
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL3 )
			( LOC_HAS_MEDKIT_HALL3 )
			( AT_MK2_HALL3 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL2
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL2 )
			( LOC_HAS_MEDKIT_HALL2 )
			( AT_MK2_HALL2 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_HALL1
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_HALL1 )
			( LOC_HAS_MEDKIT_HALL1 )
			( AT_MK2_HALL1 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM9
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM9 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM9 )
			( LOC_HAS_MEDKIT_ROOM9 )
			( AT_MK2_ROOM9 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM8
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM8 )
			( LOC_HAS_MEDKIT_ROOM8 )
			( AT_MK2_ROOM8 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM5
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM5 )
			( LOC_HAS_MEDKIT_ROOM5 )
			( AT_MK2_ROOM5 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM4
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM4 )
			( LOC_HAS_MEDKIT_ROOM4 )
			( AT_MK2_ROOM4 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM3
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM3 )
			( LOC_HAS_MEDKIT_ROOM3 )
			( AT_MK2_ROOM3 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM2
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM2 )
			( LOC_HAS_MEDKIT_ROOM2 )
			( AT_MK2_ROOM2 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK2_ROOM1
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK2 )
			( AT_COMMX_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK2_ROOM1 )
			( LOC_HAS_MEDKIT_ROOM1 )
			( AT_MK2_ROOM1 )
			(not ( HAS_COMMX_MK2 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL5
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL5 )
			( LOC_HAS_MEDKIT_HALL5 )
			( AT_MK1_HALL5 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL4
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL4 )
			( LOC_HAS_MEDKIT_HALL4 )
			( AT_MK1_HALL4 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL3
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL3 )
			( LOC_HAS_MEDKIT_HALL3 )
			( AT_MK1_HALL3 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL2
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL2 )
			( LOC_HAS_MEDKIT_HALL2 )
			( AT_MK1_HALL2 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_HALL1
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_HALL1 )
			( LOC_HAS_MEDKIT_HALL1 )
			( AT_MK1_HALL1 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM9
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM9 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM9 )
			( LOC_HAS_MEDKIT_ROOM9 )
			( AT_MK1_ROOM9 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM8
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM8 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM8 )
			( LOC_HAS_MEDKIT_ROOM8 )
			( AT_MK1_ROOM8 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM5
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM5 )
			( LOC_HAS_MEDKIT_ROOM5 )
			( AT_MK1_ROOM5 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM4
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM4 )
			( LOC_HAS_MEDKIT_ROOM4 )
			( AT_MK1_ROOM4 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM3
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM3 )
			( LOC_HAS_MEDKIT_ROOM3 )
			( AT_MK1_ROOM3 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM2
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM2 )
			( LOC_HAS_MEDKIT_ROOM2 )
			( AT_MK1_ROOM2 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action DROP_OFF_COMMX_MK1_ROOM1
		:parameters ()
		:precondition
		(and
			( HAS_COMMX_MK1 )
			( AT_COMMX_ROOM1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( DELIVERED_COMMX_MK1_ROOM1 )
			( LOC_HAS_MEDKIT_ROOM1 )
			( AT_MK1_ROOM1 )
			(not ( HAS_COMMX_MK1 ))
			(not ( HAS_MEDKIT_COMMX ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK2_ROOM3
		:parameters ()
		:precondition
		(and
			( AT_MK2_ROOM3 )
			( AT_COMMX_ROOM3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK2 )
			(not ( AT_MK2_ROOM3 ))
			(not ( LOC_HAS_MEDKIT_ROOM3 ))
		)
	)
	(:action PICK_UP_MEDKIT_COMMX_MK1_ROOM2
		:parameters ()
		:precondition
		(and
			( AT_MK1_ROOM2 )
			( AT_COMMX_ROOM2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( HAS_MEDKIT_COMMX )
			( HAS_COMMX_MK1 )
			(not ( AT_MK1_ROOM2 ))
			(not ( LOC_HAS_MEDKIT_ROOM2 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL1_ROOM1
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM1 )
			(not ( AT_COMMX_HALL1 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL2_ROOM2
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM2 )
			(not ( AT_COMMX_HALL2 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL3_ROOM3
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM3 )
			(not ( AT_COMMX_HALL3 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL4_ROOM4
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM4 )
			(not ( AT_COMMX_HALL4 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL3_ROOM8
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM8 )
			(not ( AT_COMMX_HALL3 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL4_ROOM9
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM9 )
			(not ( AT_COMMX_HALL4 ))
		)
	)
	(:action MOVE_COMMX_HALL1_HALL2
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL1 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL2 )
			(not ( AT_COMMX_HALL1 ))
		)
	)
	(:action MOVE_COMMX_HALL2_HALL3
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL3 )
			(not ( AT_COMMX_HALL2 ))
		)
	)
	(:action MOVE_COMMX_HALL3_HALL4
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL4 )
			(not ( AT_COMMX_HALL3 ))
		)
	)
	(:action MOVE_COMMX_HALL4_HALL5
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL5 )
			(not ( AT_COMMX_HALL4 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL2_HALL1
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL2 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL1 )
			(not ( AT_COMMX_HALL2 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL3_HALL2
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL3 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL2 )
			(not ( AT_COMMX_HALL3 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL4_HALL3
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL4 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL3 )
			(not ( AT_COMMX_HALL4 ))
		)
	)
	(:action MOVE_REVERSE_COMMX_HALL5_ROOM5
		:parameters ()
		:precondition
		(and
			( AT_COMMX_HALL5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_ROOM5 )
			(not ( AT_COMMX_HALL5 ))
		)
	)
	(:action MOVE_COMMX_ROOM5_HALL5
		:parameters ()
		:precondition
		(and
			( AT_COMMX_ROOM5 )
		)
		:effect
		(and
			(increase (total-cost) 1)
			( AT_COMMX_HALL5 )
			(not ( AT_COMMX_ROOM5 ))
		)
	)

)
