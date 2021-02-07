%% Copyright (C) 2017, 2019, 2020, 2021 Dennis J. Darland
%% trouble with commit made this change!!!
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
%% 
%%
%%
%%

%%    There is one primitive sort of belief - in ideas

%%    believes_in_ideas( Subject, Time,
%%		      [Relation_Idea,
%%		      A_Idea,
%%		      B_Idea,
%%		      C_Idea, ... ])

%% The Subject at Time has a belief relation between the Relation_Idea and
%% The following Ideas.

%% There are 7 relations of both belief and belief_not.
%% Those of understanding are defined in terms of rrrr and ssss
%% Those of belief require also a belief_in_ideas relation.

%% The 7 cases are:

%% 1 words
%% 2 ideas
%% 3 objects

%% 4 words_ideas
%% 5 words_objects
%% 6 ideas_objects

%% 7 words_ideas_objects


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% understands_ideas_objects is defined.
%% It applies to an intelligent Subject at some Time.
%% There is a list of pairs (starting with relational) ideas and objects.
%% The arity_relation must match the number of pairs following the relation
%% pair. (Or an arity_relation of -999 matches any number of pairs.)
%% The type objects of the following pairs must be one less thasn the type of
%% the relation.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 1

believes_words( Subject, Time, [[Relation_Word] | List]) :-
	%% list of words
	rrrr( Subject, Time, Relation_Word, Relation_Idea),
	arity_idea( Relation_Idea, Arity),
	type_idea( Relation_Idea, Type),
	match_word_belief(Subject, Time, List,
			  Arity, Type - 1, [Relation_Idea]).

match_word_belief(Subject, Time, [], 0, Type, Idea_List) :-
	believes_in_ideas( Subject, Time, Idea_List).

%% -999 indicates arbitrary arity.
match_word_belief(Subject, Time, [], -999, Idea_List) :-
	believes_in_ideas( Subject, Time, Idea_List).

match_word_belief(Subject, Time,
		  [[Word] | List],
		  Arity, Type, Idea_List) :-
	% List of Word Idea Pair.
	rrrr( Subject, Time, Word, Idea),
	type_idea( Idea, Type),
	Idea_List_Out = append(Idea_List, [Idea]),
	match_word_belief(Subject, Time,
			  List,
			  % if Arity is not Arbitrary sub 1
			  cond(Arity =\= -999, Arity - 1,
			       -999),
			  Type, Idea_List_Out).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 2

%% believes_ideas is primitive for these purposes

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 3

believes_objects( Subject, Time, [[Relation] | List]) :-
	%% list of idea object Pairs
	ssss( Subject, Time, Relation_Idea, Relation),
	arity_idea( Relation_Idea, Arity),
%	(Arity =:= length(List) or Arity =:= -999),  
	type_idea( Relation_Idea, Type),
	match_object_belief(Subject, Time, List,
			    Arity, Type - 1, [Relation_Idea]).

match_object_belief(Subject, Time, [], 0, Type, Idea_List) :- 
	believes_in_ideas( Subject, Time, Idea_List).

%% -999 indicates arbitrary arity.
match_object_belief(Subject, Time, [], -999, Idea_List) :-
	believes_in_ideas( Subject, Time, Idea_List).

match_object_belief(Subject, Time,
		    [[Object] | List],
		    Arity, Type, Idea_List) :-
	% List of Objects.
	ssss( Subject, Time, Idea, Object),
	type_idea( Idea, Type),
	%	write(word,Word,idea,Idea,object,Object),
	%	write(arity,Arity,type,Type),
	%	write(triplelist,TripleList),
	%	write(idea_list, Idea_List, idea, [Idea]),
	Idea_List_Out = append(Idea_List, [Idea]),
	match_object_belief(Subject, Time,
			    List,
			    % if Arity is not Arbitrary sub 1
			    cond(Arity =\= -999, Arity - 1,
				 -999),
			    Type, Idea_List_Out).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% if a person believes in words and ideas then:
% they must have the correct relation among the words
% they must have the correct relation among their ideas
% and understand the relation between the words and ideas.
%
% This amounts to the correct rrrr relations holding.
% There might not even be corresponding objects.

%% 4

believes_words_ideas( Subject, Time, [[Relation_Word, Relation_Idea] | PairList]) :-
	%% list of word, idea pairs
	rrrr( Subject, Time, Relation_Word, Relation_Idea),
	%	write(relation_idea, Relation_Idea),
	ssss( Subject, Time, Relation_Idea, Relation),
	arity_idea( Relation_Idea, Arity),
	type_idea( Relation_Idea, Type),
	match_word_idea_belief(Subject, Time, PairList,
			       Arity, Type - 1, [Relation_Idea]).

match_word_idea_belief(Subject, Time, [], 0, Type, Idea_List) :-
	believes_in_ideas( Subject, Time, Idea_List).

%% -999 indicates arbitrary arity.
match_word_idea_belief(Subject, Time, [], -999, Idea_List) :-
	believes_in_ideas( Subject, Time, Idea_List).

match_word_idea_belief(Subject, Time,
		       [[Word, Idea] | PairList],
		       Arity, Type, Idea_List) :-
	% List of Word Idea Object Triple.
	rrrr( Subject, Time, Word, Idea),
	type_idea( Idea, Type),
	%	write(word,Word,idea,Idea,object,Object),
	%	write(arity,Arity,type,Type),
	%	write(triplelist,TripleList),
	%	write(idea_list, Idea_List, idea, [Idea]),
	Idea_List_Out = append(Idea_List, [Idea]),
	match_word_idea_belief(Subject, Time,
			       PairList,
			       % if Arity is not Arbitrary sub 1
			       cond(Arity =\= -999, Arity - 1,
				    -999),
			       Type, Idea_List_Out).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 5

believes_words_objects( Subject, Time, [[Relation_Word, Relation] | Pair_List]) :-
%	write(relation_word, Relation_Word),
%	write(relation, Relation),
	%% list of word, idea object pairs
	rrrr( Subject, Time, Relation_Word, Relation_Idea),
	ssss( Subject, Time, Relation_Idea, Relation),
%	write(relation_idea, Relation_Idea),
%	write(relation, Relation),
	arity_idea( Relation_Idea, Arity),
%	write(arity, Arity),
	type_idea( Relation_Idea, Type),
%	write(type, Type),
	match_word_object_belief(Subject, Time, Pair_List,
			       Arity, Type - 1, [Relation_Idea]).

match_word_object_belief(Subject, Time, [], 0, Type, Idea_List) :-
	believes_in_ideas( Subject, Time, Idea_List).

%% -999 indicates arbitrary arity.
match_word_object_belief(Subject, Time, [], -999, Idea_List) :-
	believes_in_ideas( Subject, Time, Idea_List).

match_word_object_belief(Subject, Time,
			 [[Word, Object] | Pair_List],
			 Arity, Type, Idea_List) :-
	% List of Word Idea Object Triple.
	rrrr( Subject, Time, Word, Idea),
	ssss( Subject, Time, Idea, Object),
	type_idea( Idea, Type),
	%	write(word,Word,idea,Idea,object,Object),
	%	write(arity,Arity,type,Type),
	%	write(triplelist,TripleList),
	%	write(idea_list, Idea_List, idea, [Idea]),
	Idea_List_Out = append(Idea_List, [Idea]),
	match_word_object_belief(Subject, Time,
				 Pair_List,
				 % if Arity is not Arbitrary sub 1
				 cond(Arity =\= -999, Arity - 1,
				      -999),
				 Type, Idea_List_Out).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 6

believes_ideas_objects(Subject, Time, [[Relation_Idea, Relation] | PairList]) :-
	%% list of word, idea object triples
	ssss(Subject, Time, Relation_Idea, Relation),
	arity_idea(Relation_Idea, Arity),
	type_idea(Relation_Idea, Type),
	match_idea_object_belief(Subject, Time, PairList,
				 Arity, Type - 1, [Relation_Idea]).

match_idea_object_belief(Subject, Time, [], 0, Type, Idea_List) :-
	believes_in_ideas(Subject, Time, Idea_List).

%% -999 indicates arbitrary arity.
match_idea_object_belief(Subject, Time, [], Arity, Idea_List) :-
	Arity =:= -999,
	believes_in_ideas(Subject, Time, Idea_List).

match_idea_object_belief(Subject, Time,
			 [[Idea, Object] | PairList],
			 Arity, Type, Idea_List) :-
	% List of Word Idea Object Triple.
	ssss(Subject, Time, Idea, Object),
	type_idea(Idea, Type),
	Idea_List_Out = append(Idea_List, [Idea]),
	Arity > 0,
	match_idea_object_belief(Subject, Time,
				 PairList,
				 % if Arity is not Arbitrary sub 1
				 cond(Arity =\= -999, Arity - 1,
				      -999),
				 Type, Idea_List_Out).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 7

believes_words_ideas_objects( Subject, Time, [[Relation_Word, Relation_Idea, Relation] | TripleList]) :-
	%% list of word, idea object triples
	rrrr( Subject, Time, Relation_Word, Relation_Idea),
%	write(relation_idea, Relation_Idea),
	ssss( Subject, Time, Relation_Idea, Relation),
	arity_idea( Relation_Idea, Arity),
	type_idea( Relation_Idea, Type),
	match_triple_word_idea_object_belief(Subject, Time, TripleList,
					     Arity, Type - 1, [Relation_Idea]).

match_triple_word_idea_object_belief(Subject, Time, [], 0, Type, Idea_List) :-
	believes_in_ideas( Subject, Time, Idea_List).

%% -999 indicates arbitrary arity.
match_triple_word_idea_object_belief(Subject, Time, [], -999, Idea_List) :-
	believes_in_ideas( Subject, Time, Idea_List).

match_triple_word_idea_object_belief(Subject, Time,
				     [[Word, Idea, Object] | TripleList],
				     Arity, Type, Idea_List) :-
	% List of Word Idea Object Triple.
	rrrr( Subject, Time, Word, Idea),
	ssss( Subject, Time, Idea, Object),
	type_idea( Idea, Type),
%	write(word,Word,idea,Idea,object,Object),
%	write(arity,Arity,type,Type),
%	write(triplelist,TripleList),
%	write(idea_list, Idea_List, idea, [Idea]),
	Idea_List_Out = append(Idea_List, [Idea]),
	match_triple_word_idea_object_belief(Subject, Time,
					     TripleList,
					     % if Arity is not Arbitrary sub 1
					     cond(Arity =\= -999, Arity - 1,
						  -999),
					     Type, Idea_List_Out).


% if a person belives in words about objects then:
% they must have the correct relation among the words
% they must have the correct relation among their ideas
% and understand the relation between the words, ideas and objects.
% NOTE: The only way to connect the words to the objects is via ideas.
% This means the rrss relations hold.







%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% if a person believes in ideas about objects then:
% they must have the correct relation among their ideas
% and understand the relation between the ideas and objects.
%
% This amounts to the correct ssss relations holding.
% There might not even be corresponding words.



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%








%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% now believes not cases.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

believes_not_words( Subject, Time, [[Relation_Word] | List]) :-
	%% list of words
	rrrr( Subject, Time, Relation_Word, Relation_Idea),
	arity_idea( Relation_Idea, Arity),
	type_idea( Relation_Idea, Type),
	match_not_word_belief(Subject, Time, List,
			  Arity, Type - 1, [Relation_Idea]).

match_not_word_belief(Subject, Time, [], 0, Type, Idea_List) :-
	believes_not_in_ideas( Subject, Time, Idea_List).

%% -999 indicates arbitrary arity.
match_not_word_belief(Subject, Time, [], -999, Idea_List) :-
	believes_not_in_ideas( Subject, Time, Idea_List).

match_not_word_belief(Subject, Time,
		  [[Word] | List],
		  Arity, Type, Idea_List) :-
	% List of Word Idea Pair.
	rrrr( Subject, Time, Word, Idea),
	type_idea( Idea, Type),
	Idea_List_Out = append(Idea_List, [Idea]),
	match_not_word_belief(Subject, Time,
			  List,
			  % if Arity is not Arbitrary sub 1
			  cond(Arity =\= -999, Arity - 1,
			       -999),
			  Type, Idea_List_Out).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 2

%% believes_not_ideas is primitive for these purposes

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 3

believes_not_objects( Subject, Time, [[Relation] | List]) :-
	%% list of idea object Pairs
	ssss( Subject, Time, Relation_Idea, Relation),
	arity_idea( Relation_Idea, Arity),
%	(Arity =:= length(List) or Arity =:= -999),  
	type_idea( Relation_Idea, Type),
	match_not_object_belief(Subject, Time, List,
			    Arity, Type - 1, [Relation_Idea]).

match_not_object_belief(Subject, Time, [], 0, Type, Idea_List) :- 
	believes_not_in_ideas( Subject, Time, Idea_List).

%% -999 indicates arbitrary arity.
match_not_object_belief(Subject, Time, [], -999, Idea_List) :-
	believes_not_in_ideas( Subject, Time, Idea_List).

match_not_object_belief(Subject, Time,
		    [[Object] | List],
		    Arity, Type, Idea_List) :-
	% List of Objects.
	ssss( Subject, Time, Idea, Object),
	type_idea( Idea, Type),
	%	write(word,Word,idea,Idea,object,Object),
	%	write(arity,Arity,type,Type),
	%	write(triplelist,TripleList),
	%	write(idea_list, Idea_List, idea, [Idea]),
	Idea_List_Out = append(Idea_List, [Idea]),
	match_not_object_belief(Subject, Time,
			    List,
			    % if Arity is not Arbitrary sub 1
			    cond(Arity =\= -999, Arity - 1,
				 -999),
			    Type, Idea_List_Out).

% if a person belives in words about objects then:
% they must have the correct relation among the words
% they must have the correct relation among their ideas
% and understand the relation between the words, ideas and objects.
% NOTE: The only way to connect the words to the objects is via ideas.
% This means the rrss relations hold.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% if a person believes in words and ideas then:
% they must have the correct relation among the words
% they must have the correct relation among their ideas
% and understand the relation between the words and ideas.
%
% This amounts to the correct rrrr relations holding.
% There might not even be corresponding objects.

%% 4

believes_not_words_ideas( Subject, Time, [[Relation_Word, Relation_Idea] | PairList]) :-
	%% list of word, idea pairs
	rrrr( Subject, Time, Relation_Word, Relation_Idea),
	%	write(relation_idea, Relation_Idea),
	ssss( Subject, Time, Relation_Idea, Relation),
	arity_idea( Relation_Idea, Arity),
	type_idea( Relation_Idea, Type),
	match_not_word_idea_belief(Subject, Time, PairList,
			       Arity, Type - 1, [Relation_Idea]).

match_not_word_idea_belief(Subject, Time, [], 0, Type, Idea_List) :-
	believes_not_in_ideas( Subject, Time, Idea_List).

%% -999 indicates arbitrary arity.
match_not_word_idea_belief(Subject, Time, [], -999, Idea_List) :-
	believes_not_in_ideas( Subject, Time, Idea_List).

match_not_word_idea_belief(Subject, Time,
		       [[Word, Idea] | PairList],
		       Arity, Type, Idea_List) :-
	% List of Word Idea Object Triple.
	rrrr( Subject, Time, Word, Idea),
	type_idea( Idea, Type),
	%	write(word,Word,idea,Idea,object,Object),
	%	write(arity,Arity,type,Type),
	%	write(triplelist,TripleList),
	%	write(idea_list, Idea_List, idea, [Idea]),
	Idea_List_Out = append(Idea_List, [Idea]),
	match_not_word_idea_belief(Subject, Time,
			       PairList,
			       % if Arity is not Arbitrary sub 1
			       cond(Arity =\= -999, Arity - 1,
				    -999),
			       Type, Idea_List_Out).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 5

believes_not_words_objects( Subject, Time, [[Relation_Word, Relation] | Pair_List]) :-
%	write(relation_word, Relation_Word),
%	write(relation, Relation),
	%% list of word, idea object pairs
	rrrr( Subject, Time, Relation_Word, Relation_Idea),
	ssss( Subject, Time, Relation_Idea, Relation),
%	write(relation_idea, Relation_Idea),
%	write(relation, Relation),
	arity_idea( Relation_Idea, Arity),
%	write(arity, Arity),
	type_idea( Relation_Idea, Type),
%	write(type, Type),
	match_not_word_object_belief(Subject, Time, Pair_List,
			       Arity, Type - 1, [Relation_Idea]).

match_not_word_object_belief(Subject, Time, [], 0, Type, Idea_List) :-
	believes_not_in_ideas( Subject, Time, Idea_List).

%% -999 indicates arbitrary arity.
match_not_word_object_belief(Subject, Time, [], -999, Idea_List) :-
	believes_not_in_ideas( Subject, Time, Idea_List).

match_not_word_object_belief(Subject, Time,
			 [[Word, Object] | Pair_List],
			 Arity, Type, Idea_List) :-
	% List of Word Idea Object Triple.
	rrrr( Subject, Time, Word, Idea),
	ssss( Subject, Time, Idea, Object),
	type_idea( Idea, Type),
	%	write(word,Word,idea,Idea,object,Object),
	%	write(arity,Arity,type,Type),
	%	write(triplelist,TripleList),
	%	write(idea_list, Idea_List, idea, [Idea]),
	Idea_List_Out = append(Idea_List, [Idea]),
	match_not_word_object_belief(Subject, Time,
				 Pair_List,
				 % if Arity is not Arbitrary sub 1
				 cond(Arity =\= -999, Arity - 1,
				      -999),
				 Type, Idea_List_Out).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 6

believes_not_ideas_objects(Subject, Time, [[Relation_Idea, Relation] | PairList]) :-
	%% list of word, idea object triples
	ssss(Subject, Time, Relation_Idea, Relation),
	arity_idea(Relation_Idea, Arity),
	type_idea(Relation_Idea, Type),
	match_not_idea_object_belief(Subject, Time, PairList,
				 Arity, Type - 1, [Relation_Idea]).

match_not_idea_object_belief(Subject, Time, [], 0, Type, Idea_List) :-
	believes_not_in_ideas(Subject, Time, Idea_List).

%% -999 indicates arbitrary arity.
match_not_idea_object_belief(Subject, Time, [], Arity, Idea_List) :-
	Arity =:= -999,
	believes_not_in_ideas(Subject, Time, Idea_List).

match_not_idea_object_belief(Subject, Time,
			 [[Idea, Object] | PairList],
			 Arity, Type, Idea_List) :-
	% List of Word Idea Object Triple.
	ssss(Subject, Time, Idea, Object),
	type_idea(Idea, Type),
	Idea_List_Out = append(Idea_List, [Idea]),
	Arity > 0,
	match_not_idea_object_belief(Subject, Time,
				 PairList,
				 % if Arity is not Arbitrary sub 1
				 cond(Arity =\= -999, Arity - 1,
				      -999),
				 Type, Idea_List_Out).





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 7

believes_not_words_ideas_objects( Subject, Time, [[Relation_Word, Relation_Idea, Relation] | TripleList]) :-
	%% list of word, idea object triples
	rrrr( Subject, Time, Relation_Word, Relation_Idea),
%	write(relation_idea, Relation_Idea),
	ssss( Subject, Time, Relation_Idea, Relation),
	arity_idea( Relation_Idea, Arity),
	type_idea( Relation_Idea, Type),
	match_not_triple_word_idea_object_belief(Subject, Time, TripleList,
					     Arity, Type - 1, [Relation_Idea]).

match_not_triple_word_idea_object_belief(Subject, Time, [], 0, Type, Idea_List) :-
	believes_not_in_ideas( Subject, Time, Idea_List).

%% -999 indicates arbitrary arity.
match_not_triple_word_idea_object_belief(Subject, Time, [], -999, Idea_List) :-
	believes_not_in_ideas( Subject, Time, Idea_List).

match_not_triple_word_idea_object_belief(Subject, Time,
				     [[Word, Idea, Object] | TripleList],
				     Arity, Type, Idea_List) :-
	% List of Word Idea Object Triple.
	rrrr( Subject, Time, Word, Idea),
	ssss( Subject, Time, Idea, Object),
	type_idea( Idea, Type),
%	write(word,Word,idea,Idea,object,Object),
%	write(arity,Arity,type,Type),
%	write(triplelist,TripleList),
%	write(idea_list, Idea_List, idea, [Idea]),
	Idea_List_Out = append(Idea_List, [Idea]),
	match_not_triple_word_idea_object_belief(Subject, Time,
					     TripleList,
					     % if Arity is not Arbitrary sub 1
					     cond(Arity =\= -999, Arity - 1,
						  -999),
					     Type, Idea_List_Out).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% if a person believes in ideas about objects then:
% they must have the correct relation among their ideas
% and understand the relation between the ideas and objects.
%
% This amounts to the correct ssss relations holding.
% There might not even be corresponding words.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 1 words
%% 2 ideas
%% 3 objects

%% 4 words_ideas
%% 5 words_objects
%% 6 ideas_objects

%% 7 words_ideas_objects

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Now Contradicting beliefs!!
%% 1
contradicts_words( Subject, Time, List) :-
	believes_words( Subject, Time, List),
	believes_not_words( Subject, Time, List).

%% 2
contradicts_ideas( Subject, Time, List) :-
	believes_in_ideas( Subject, Time, List),
	believes_not_in_ideas( Subject, Time, List).

%% 3
contradicts_objects( Subject, Time, List) :-
	believes_objects( Subject, Time, List),
	believes_not_objects( Subject, Time, List).

%% 4
contradicts_words_ideas( Subject, Time, Pair_List) :-
	believes_words_ideas( Subject, Time, Pair_List),
	believes_not_words_ideas( Subject, Time, Pair_List).

%% 5
contradicts_words_objects( Subject, Time, Pair_List) :-
	believes_words_objects( Subject, Time, Pair_List),
	believes_not_words_objects( Subject, Time, Pair_List).

%% 6
contradicts_ideas_objects( Subject, Time, Pair_List) :-
	believes_ideas_objects( Subject, Time, Pair_List),
	believes_not_ideas_objects( Subject, Time, Pair_List).

%% 7
contradicts_words_ideas_objects( Subject, Time, Triple_List) :-
	believes_words_ideas_objects( Subject, Time, Triple_List),
	believes_not_words_ideas_objects( Subject, Time, Triple_List).

