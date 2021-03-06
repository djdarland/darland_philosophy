%% Copyright (C) 2017, 2019, 2021 Dennis J. Darland

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
%% This file only checks rules (relating to propositions). 

%% This file uses queries to demonstrate my points about
%% the non-existence of any TRUE opacity.

%% This is an example with a mini universe for queries of high complexity.

%% I use an example from Quine's Word & Object. (pp.144-151).

%% The Story of Cicero and Catiline is given
%% in _Caesar and Christ_, by Will Durant, pp. 140-147.

%% "Tully" is not in the index of that work (or "De Senectute").

%% Wikipedia gives the full name as "Marcus Tullius Cicero"
%% and notes "The name is infrequently anglicized as Tully."
%% It also does not mention "De Senectute".

%% "De Senectute" is in Wikipedia under "Writings of Cicero"

%% Tom believes that Cicero denounced Catiline.
%% Tom does not know Cicero = Tully.

%% In my philosophy, for Tom at that time,
%% "Cicero" R Toms_idea_of_Cicero
%% and
%% Toms_idea of_Cicero S Cicero
%%
%%
%% but not 
%% "Cicero" R Toms_idea_of_Tully
%% 
%%
%% In my program the relation R is represented by the predicate
%% rrrr(Subject, Time, Type, Word, Idea)
%% In my program the relation S is represented by the predicate
%% ssss(Subject, Time, Type, Idea, Object)

%% R | S is represented by rrss

%dynamic(qqqq)?
load("RULES2/life_0001.lf")?
load("FACTS2/facts_0000.lf")?
load("RULES2/rules_0001.lf")?
load("RULES2/rules_0002.lf")?
load("RULES2/rules_0003.lf")?
load("RULES2/rules_0004.lf")?
load("RULES2/life_0002.lf")?
trace_input(true)?

write_time(Ignore)?

%% I indicate for each query whether the immediate response should be
%% TRUE = Yes or FALSE = No

%% There may be subsequient No responses - as I may have asked for additional answers with semicolons.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 1 words
%% 2 ideas
%% 3 objects

%% 4 words_ideas
%% 5 words_objects
%% 6 ideas_objects

%% 7 words_ideas_objects

%% begin check for contradictory beliefs cases
%% These require much memory -- one reason for mini universe.

%% 1 gives
%% Next runs out of memory
qqqq(contradicts_words, tom, now, List)?

%% 2
%%% %% Next runs out of memory
%%% qqqq(contradicts_ideas, tom, now, List)?

%% 3
%% Next runs out of memory
%% qqqq(contradicts_objects, tom, now, List)?

%% 4
%% Next runs out of memory
%% qqqq(contradicts_words_ideas, tom, now, Pair_List)?

%% 5
%% Next runs out of memory
%% qqqq(contradicts_words_objects, tom, now, Pair_List)?

%% 6
%% Next gives answer No
qqqq(contradicts_ideas_objects, tom, now, Pair_List)?

%% 7
%% Next runs out of memory
%% qqqq(contradicts_words_ideas_objects, tom, now, Triple_List)?

write_stats(Ignore)?

halt?
%%%%%%%%%%%%%%%%%%%%%%%%%%% Next Opacity

qqqq(opaque_believes_word_idea_object, tom, now, 
				   Triple_List_1,
				   Triple_list_2)?
;

qqqq(opaque_believes_word_object, tom, now, 
			      Pair_List_1,
			      Pair_List_2)?
;

qqqq(opaque_believes_word_idea, tom, now, 
			    Pair_List_1,
			    Pair_List_2)?
;

qqqq(opaque_believes_idea_object, tom, now, 
			      Pair_List_1,
			      Pair_List_2)?
;

qqqq(opaque_believes_object, tom, now, 
			 Object_List_1,
			 Object_List_2)?

;

qqqq(transparent_believes_word_idea_object, tom, now, 
				   Triple_List_1,
				   Triple_List_2)?
;

qqqq(transparent_believes_word_object, tom, now, 
			      Pair_List_1,
			      Pair_List_2)?
;

qqqq(transparent_believes_word_idea, tom, now, 
			    Pair_List_1,
			    Pair_List_2)?
;

qqqq(transparent_believes_idea_object, tom, now, 
			      Pair_List_1,
			      Pair_List_2)?
;

qqqq(transparent_believes_object, tom, now, 
			 Object_List_1,
			 Object_List_2)?
;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

qqqq(opaque_believes_word_idea_object, quine, now, 
				   Triple_List_1,
				   Triple_list_2)?
;

qqqq(opaque_believes_word_object, quine, now, 
			      Pair_List_1,
			      Pair_List_2)?
;

qqqq(opaque_believes_word_idea, quine, now, 
			    Pair_List_1,
			    Pair_List_2)?
;

qqqq(opaque_believes_idea_object, quine, now, 
			      Pair_List_1,
			      Pair_List_2)?
;

qqqq(opaque_believes_object, quine, now, 
			 Object_List_1,
			 Object_List_2)?
;

qqqq(transparent_believes_word_idea_object, quine, now, 
				   Triple_List_1,
				   Triple_List_2)?
;

qqqq(transparent_believes_word_object, quine, now, 
			      Pair_List_1,
			      Pair_List_2)?
;

qqqq(transparent_believes_word_idea, quine, now, 
			    Pair_List_1,
			    Pair_List_2)?
;

qqqq(transparent_believes_idea_object, quine, now, 
			      Pair_List_1,
			      Pair_List_2)?
;

qqqq(transparent_believes_object, quine, now, 
			 Object_List_1,
			 Object_List_2)?
;



 


