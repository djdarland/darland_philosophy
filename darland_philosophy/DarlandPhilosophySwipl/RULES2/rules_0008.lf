%% Copyright (C) 2017, 2019, 2020, 2021 Dennis J. Darland

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
%% I have made the propositional attitude relatons support arbitrary arity.
%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Define sense (close to Frege's Sinn) (useless)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% qqqq is the only relation having ontological status.
%% qqqq is the exemplification of a universal in the following arguments.

%% some possible arguments (universals) are rrrr, ssss, and rrss.
%% rrss is defined in terms of rrrr and ssss.
%% rrrr and ssss are undefined here
%% - but not neverssarily ontologically primitive 

%% rrrr is relation between word and idea.
%% ssss is relation between idea and object.

%% rrss is relative product of rrrr and ssss.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% definition of rrss in terms of rrrr and ssss.
%% Note: qqqq is a dynamic predicate in WildLIFE - so it can be extended.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% There are 7 relations of both understanding.
%% Those of understanding are defined in terms of rrrr and ssss

%% The 7 cases are:

%% 1 words
%% 2 ideas
%% 3 objects

%% 4 words_ideas
%% 5 words_objects
%% 6 ideas_objects

%% 7 words_ideas_objects


%% understands_words_objects is defined.
%% It applies to an intelligent Subject at some Time.
%% There is a list of pairs (starting with relational) words and objects.
%% The arity_relation must match the number of pairs following the relation
%% pair. (Or an arity_relation of -999 matches any number of pairs.)
%% The type objects of the following pairs must be one less thasn the type of
%% the relation.

%% Checking agreement or disagreenent of two Subjects (word-object)

test_understanding_agrees(Subject1, Subject2, Time1, Time2, Word_Object_List) :-
%	write(dennis00001,Subject1,Subject2,Word_Object_List),
	cond(understands_words_objects(Subject1, Time1, Word_Object_List),
	     cond(understands_words_objects(Subject2, Time2, Word_Object_List),
		  write("Both ", Subject1, " and ", Subject2, " understand ",
			Word_Object_List, " at times ", Time1, " and ", Time2,
			" respectively."),
		  write(Subject1, " understands ", Word_Object_List,
			"at time ", Time1, " but ", Subject2, " does not ",
			"at time ", Time2)),
	     cond(understands_words_objects(Subject2, Time2, Word_Object_List),			  write(Subject2, " understands ", Word_Object_List,
			"at time ", Time2, " but ", Subject1, " does not ",
			"at time ", Time1),
     		  write("Neither ", Subject1, " nor ", Subject2, " understand ",
			Word_Object_List, " at times ", Time1, " and ", Time2,
			" respectively."))).
