%% Copyright (C) 2017, 2019 Dennis J. Darland

%% This file is part of darland's philosophy.

%% darland's philosophy is free software: you can redistribute it and/or modify
%% it under the terms of the GNU General Public License as published by
%% the Free Software Foundation, either version 3 of the License, or
%% (at your option) any later version.

%% darland's philosophy is distributed in the hope that it will be useful, 
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
%% GNU General Public License for more details.

%% You should have received a copy of the GNU General Public License
%% along with darland's philosophy. If not, see <http://www.gnu.org/licenses/>.
%% Common Prolog & Life predicates to simulate Dennis J. Darlands philosophy. 
%% Started Writing 1/4/2017 
%% This is a total rewrite of what I started about 10 years ago.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

opaque_believes_in_words(Subject, Time, Type, Arity,
				   Word_List_1,
				   Word_list_2) :-
    believes_in_words(Subject, Time, Type, Arity, Word_List_1),
    \+(believes_in_words(Subject, Time, Type, Arity, Word_List_2)),
    Word_List_1 = Word_List_2.

opaque_believes_in_ideas(Subject, Time, Type, Arity,
				   Idea_List_1,
				   Idea_list_2) :-
    believes_in_words(Subject, Time, Type, Arity, Idea_List_1),
    \+(believes_in_words(Subject, Time, Type, Arity, Idea_List_2)),
    Idea_List_1 = Idea_List_2.

opaque_believes_word_idea_object_L(Subject, Time, Type, Arity,
				   Triple_List_1,
				   Triple_list_2) :-
    believes_word_idea_object_L(Subject, Time, Type, Arity, Triple_List_1),
    \+(believes_word_idea_object_L(Subject, Time, Type, Arity, Triple_List_2)),
    Triple_List_1 = Triple_List_2.

opaque_believes_word_object_L(Subject, Time, Type, Arity,
			      Pair_List_1,
			      Pair_List_2) :-
    believes_word_object_L(Subject, Time, Type, Arity, Pair_List_1),
			   
    \+(believes_word_object_L(Subject, Time, Type, Arity, Pair_List_2)),
    Pair_List_1 = Pair_List_2.


opaque_believes_word_idea_L(Subject, Time, Type, Arity,
			    Pair_List_1,
			    Pair_List_2) :-
    believes_word_idea_L(Subject, Time, Type, Arity, Pair_List_1),
    \+(believes_word_idea_L(Subject, Time, Type, Arity, Pair_List_2)),
    Pair_List_1 = Pair_List_2.


opaque_believes_idea_object_L(Subject, Time, Type, Arity,
			      Pair_List_1,
			      Pair_List_2) :-
    believes_idea_object_L(Subject, Time, Type, Arity, Pair_List_1),
    \+(believes_idea_object_L(Subject, Time, Type, Arity, Pair_List_2)),
    Pair_List_1 = Pair_List_2.

opaque_believes_object_L(Subject, Time, Type, Arity,
			 Object_List_1,
			 Object_List_2) :-
    believes_object_L(Subject, Time, Type, Arity, Object_List_1),
    \+(believes_object_L(Subject, Time, Type, Arity, Object_List_2)),
    Object_List_1 = Object_List_2.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%







transparent_believes_word_idea_object_L(Subject, Time, Type, Arity,
				   Triple_List_1,
				   Triple_List_2) :-
    believes_word_idea_object_L(Subject, Time, Type, Arity, Triple_List_1),
%    write(Triple_List_1, "\n"),
    believes_word_idea_object_L(Subject, Time, Type, Arity, Triple_List_2),
%    write(Triple_List_2, "\n"),
    length(Triple_List_1) =:= length(Triple_List_2), 
    same_objects_in_triple(Triple_List_1,
			   Triple_List_2).

% same_objects_in_triple([[]],[[]]).

same_objects_in_triple([List_1_Head | List_1_Tail],
		       [List_2_Head | List_2_Tail]) :-
    List_1_Head = [Word_1, Idea_1, Object_1],
    List_2_Head = [Word_2, Idea_2, Object_2],
%    write("Objects = ", Object_1, " -- ", Object_2, "\n"),
    Object_1 = Object_2,
    cond(length(List_1_Tail) > 0,
	 cond(length(List_2_Tail) > 0,
	      same_objects_in_triple(List_1_Tail,
				     List_2_Tail))).

transparent_believes_word_object_L(Subject, Time, Type, Arity,
			      Pair_List_1,
			      Pair_List_2) :-
    believes_word_object_L(Subject, Time, Type, Arity, Pair_List_1),
    believes_word_object_L(Subject, Time, Type, Arity, Pair_List_2),
    length(Pair_List_1) =:= length(Pair_List_2), 
    same_objects_in_pair(Pair_List_1, Pair_List_2).


same_objects_in_pair([List_1_Head | List_1_Tail],
		     [List_2_Head | List_2_Tail]) :-
    List_1_Head = [Item_1, Object_1],
    List_2_Head = [Item_2, Object_2],
    Object_1 = Object_2,
    cond(length(List_1_Tail) > 0,
	 cond(length(List_2_Tail) > 0,
	      same_objects_in_pair(List_1_Tail,
				     List_2_Tail))).

transparent_believes_word_idea_L(Subject, Time, Type, Arity,
			    Pair_List_1,
			    Pair_List_2) :-
    believes_word_idea_L(Subject, Time, Type, Arity, Pair_List_1),
    believes_word_idea_L(Subject, Time, Type, Arity, Pair_List_2),
    same_objects_in_pair(Pair_List_1, Pair_List_2).

transparent_believes_idea_object_L(Subject, Time, Type, Arity,
			      Pair_List_1,
			      Pair_List_2) :-
    believes_idea_object_L(Subject, Time, Type, Arity, Pair_List_1),
    believes_idea_object_L(Subject, Time, Type, Arity, Pair_List_2),
    same_objects_in_pair(Pair_List_1, Pair_List_2).

transparent_believes_object_L(Subject, Time, Type, Arity,
			 Object_List_1,
			 Object_List_2) :-
    believes_object_L(Subject, Time, Type, Arity, Object_List_1),
    \+(believes_object_L(Subject, Time, Type, Arity, Object_List_2)),
    Object_List_1 = Object_List_2.


same_objects_in_list([List_1_Head | List_1_Tail],
		     [List_2_Head | List_2_Tail]) :-
    List_1_Head = [Object_1],
    List_2_Head = [Object_2],
    Object_1 = Object_2,
    cond(length(List_1_Tail) > 0,
	 cond(length(List_2_Tail) > 0,
	      same_objects_in_list(List_1_Tail,
				     List_2_Tail))).


