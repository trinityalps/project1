:- dynamic person/1, weapon/1, room/1.


person(colonel_mustard).
person(mrs_peacock).
person(mrs_scarlet).
person(professor_plum).
person(mr_green).
person(mrs_white).

weapon(knife).
weapon(candlestick).
weapon(revolver).
weapon(rope).
weapon(lead_pipe).
weapon(wrench). 

room(hall).
room(lounge).
room(dining_room).
room(kitchen). 
room(ballroom). 
room(conservatory). 
room(billiard_room).
room(library).
room(study). 



possible(P, W, R) :- person(P), weapon(W), room(R). 


