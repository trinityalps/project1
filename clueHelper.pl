:- dynamic person/1, weapon/1, room/1, cdef/0, abcd/0, peoplenamelist/2, peoplechancelist/2, weaponnamelist/2,
	weaponchancelist/2,roomnamelist/2,roomchancelist/2, personchance/2.

list([]).
list([_|T]) :- list(T).
ourList([],5).
peoplenamelist([colonel_mustard,mrs_peacock,mrs_scarlet,professor_plum,mr_green,mrs_white],6).
peoplechancelist([17,17,17,17,17,17],6).
weaponnamelist([knife,candlestick,revolver,rope,lead_pipe, wrench],6).
weaponchancelist([17,17,17,17,17,17],6).
roomnamelist([hall,lounge,dining_room,kitchen,ballroom,conservatory,billiard_room,library,study],9).
roomchancelist([11,11,11,11,11,11,11,11,11],9).



%% possible suspects
person(colonel_mustard).
person(mrs_peacock).
person(mrs_scarlet).
person(professor_plum).
person(mr_green).
person(mrs_white).

personchance(colonel_mustard, 17).
personchance(mrs_peacock,17).
personchance(mrs_scarlet,17).
personchance(professor_plum,17).
personchance(mr_green,17).
personchance(mrs_white,17).

remove(X, Y, Z):- person(X),countpeople(Y), retract(personchance(X,_)), retract(person(X)), countpeople(Z).


countpeople(X) :-
    findall(N, person(N), Ns),
    length(Ns, X).

remaining(X,Y,Z) :-
    findall(N, person(N), Ns),
    length(Ns, X),
    findall(C, weapon(C), Cs),
    length(Cs, Y),
    findall(R, room(R), Rs),
    length(Rs, Z).


%% possible murder weapons used
weapon(knife).
weapon(candlestick).
weapon(revolver).
weapon(rope).
weapon(lead_pipe).
weapon(wrench).

%% possible rooms
room(hall).
room(lounge).
room(dining_room).
room(kitchen).
room(ballroom).
room(conservatory).
room(billiard_room).
room(library).
room(study).

abcd :- assert(cdef).

possible(P, W, R) :- person(P), weapon(W), room(R), \+ failedGuess(P, W, R).



%% possibilities(P, W, R, Chance) is true if the chance of P W and R being the answer
%% is at least Chance


%% chance(P, W, R, Chance) is true if person P, weapon W, and Room R have Chance chance
%% of being the correct answer


%% highest_chance(P, W, R) is true if person P, weapon W, and room R have the highest
%% chance of being the correct answer



%% failed_guess(P, W, R) is true if person P, weapon W, and room R have been guessed
%% and proven wrong

failed_guess(P, W, R) :- member(P,[personnamelist]),member(W,[weaponnamelist]),member(R, [roomnamelist]).

chancehelp :- write('This is the help menu').















