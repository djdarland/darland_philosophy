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

%% There are 7 relations of both understanding and belief.
%% Those of understanding are defined in terms of rrrr and ssss
%% Those of belief require also a belief_in_ideas relation.

%% The 7 cases are:

%% words
%% ideas
%% objects

%% words_ideas
%% words_objects
%% ideas_objects

%% words_ideas_objects


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% BELIEF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Checks on Belief follow.

%%%%%%%%%%%%%%%%%%%%%%%%
%% WORDS
%%%%%%%%%%%%%%%%%%%%%%%%

%% Next should be TRUE

qqqq(believes_words, tom, now,
     [[denounced_word],
      [cicero_word],
      [catiline_word]])?

%% Next should be FALSE

qqqq(believes_words, tom, now,
     [[denounced_word],
      [tully_word],
      [catiline_word]])?

%% Next should be FALSE -- wrong type

qqqq(believes_words, tom, now,
     [[tully_word],
      [tully_word],
      [catiline_word]])?

%% Next should be FALSE -- wrong type

qqqq(believes_words, tom, now,
     [[denounced_word],
      [tully_word],
      [denounced_word]])?

%% Next should be FALSE -- wrong arity

qqqq(believes_words, tom, now,
     [[denounced_word],
      [cicero_word]])?

%%%%%%%%%%%%%%%%%%%%%%%%
%% IDEAS
%%%%%%%%%%%%%%%%%%%%%%%%

%% Next should be TRUE

%% Note here are just lists of ideas - not lists of lists

qqqq(believes_in_ideas, tom, now,
     [tom_denounced_idea,
      tom_cicero_idea,
      tom_catiline_idea])?

%% Next should be FALSE -- not a belief

qqqq(believes_in_ideas, tom, now,
     [tom_denounced_idea,
      tom_tully_idea,
      tom_catiline_idea])?

%% Next should be FALSE -- wrong type

qqqq(believes_in_ideas, tom, now,
     [tom_tully_idea,
      tom_tully_idea,
      tom_catiline_idea])?

%% Next should be FALSE -- wrong type

qqqq(believes_in_ideas, tom, now,
     [tom_denounced_idea,
      tom_tully_idea,
      tom_denounced_idea])?

%% Next should be FALSE -- wrong arity

qqqq(believes_in_ideas, tom, now,
     [tom_denounced_idea,
      tom_cicero_idea])?

%%%%%%%%%%%%%%%%%%%%%%%%
%% OBJECTS
%%%%%%%%%%%%%%%%%%%%%%%%

%% Next should be TRUE

qqqq(believes_objects, tom, now,
     [[denounced],
      [cicero],
      [catiline]])?

%% Next should be FALSE -- there is no (separate) object tully

qqqq(believes_objects, tom, now,
     [[denounced],
      [tully],
      [catiline]])?

%% Next should be FALSE -- wrong type

qqqq(believes_objects, tom, now,
     [[tully],
      [tully],
      [catiline]])?

%% Next should be FALSE -- wrong type

qqqq(believes_objects, tom, now,
     [[denounced],
      [tully],
      [denounced]])?

%% Next should be FALSE -- wrong arity

qqqq(believes_objects, tom, now,
     [[denounced],
      [cicero]])?

%%%%%%%%%%%%%%%%%%%%%%%%
%% WORDS_IDEAS
%%%%%%%%%%%%%%%%%%%%%%%%

%% Next should be TRUE

qqqq(believes_words_ideas, tom, now,
     [[denounced_word, tom_denounced_idea],
      [cicero_word, tom_cicero_idea],
      [catiline_word, tom_catiline_idea]])?

%% Next should be FALSE -- not a belief

qqqq(believes_words_ideas, tom, now,
     [[denounced_word, tom_denounced_idea],
      [tully_word, tom_tully_idea],
      [catiline_word, tom_catiline_idea]])?

%% Next should be FALSE -- wrong type

qqqq(believes_words_ideas, tom, now,
     [[tully_word, tom_tully_idea],
      [tully_word, tom_tully_idea],
      [catiline_word, tom_catiline_idea]])?

%% Next should be FALSE -- wrong type

qqqq(believes_words_ideas, tom, now,
     [[denounced_word, tom_denounced_idea],
      [tully_word, tom_tully_word],
      [denounced_word, tom_denounced_idea]])?

%% Next should be FALSE -- wrong arity

qqqq(believes_words_ideas, tom, now,
     [[denounced_word, tom_denounced_idea],
      [cicero_word, tom_cicero_idea]])?

%% Next should be FALSE -- wrong rrrr relation for tully_word

qqqq(believes_words_ideas, tom, now,
     [[denounced_word, tom_denounced_idea],
      [tully_word, tom_cicero_idea],
      [catiline_word, tom_catiline_idea]])?

%% Next should be FALSE -- wrong rrrr relation for cicero_word

qqqq(believes_words_ideas, tom, now,
     [[denounced_word, tom_denounced_idea],
      [cicero_word, tom_tully_idea],
      [catiline_word, tom_catiline_idea]])?

%%%%%%%%%%%%%%%%%%%%%%%%
%% WORDS_OBJECTS
%%%%%%%%%%%%%%%%%%%%%%%%

%% Next should be TRUE

qqqq(believes_words_objects, tom, now,
     [[denounced_word, denounced],
      [cicero_word, cicero],
      [catiline_word, catiline]])?

%% Next should be FALSE -- not a belief

qqqq(believes_words_objects, tom, now,
     [[denounced_word, denounced],
      [tully_word, cicero],
      [catiline_word, catiline]])?

%% Next should be FALSE -- wrong type

qqqq(believes_words_objects, tom, now,
     [[tully_word, tully],
      [tully_word, tully],
      [catiline_word, catiline]])?

%% Next should be FALSE -- wrong type

qqqq(believes_words_objects, tom, now,
     [[denounced_word, denounced],
      [tully_word, tully],
      [denounced_word, denounced]])?

%% Next should be FALSE -- wrong arity

qqqq(believes_words_objects, tom, now,
     [[denounced_word, denounced],
      [cicero_word, cicero]])?

%%%%%%%%%%%%%%%%%%%%%%%%
%% IDEAS_OBJECTS
%%%%%%%%%%%%%%%%%%%%%%%%

%% Next should be TRUE

qqqq(believes_ideas_objects, tom, now,
     [[tom_denounced_idea, denounced],
      [tom_cicero_idea, cicero],
      [tom_catiline_idea, catiline]])?

%% Next should be FALSE -- not a belief

qqqq(believes_ideas_objects, tom, now,
     [[tom_denounced_idea, denounced],
      [tom_tully_idea, cicero],
      [tom_catiline_idea, catiline]])?

%% Next should be FALSE -- wrong type

qqqq(believes_ideas_objects, tom, now,
     [[tom_tully_idea, tully],
      [tom_tully_idea, tully],
      [tom_catiline_idea, catiline]])?

%% Next should be FALSE -- wrong type

qqqq(believes_ideas_objects, tom, now,
     [[tom_denounced_idea, denounced],
      [tom_tully_idea, tully],
      [tom_denounced_idea, denounced]])?

%% Next should be FALSE -- wrong arity

qqqq(believes_ideas_objects, tom, now,
     [[tom_denounced_idea, denounced],
      [tom_cicero_idea, cicero]])?

%%%%%%%%%%%%%%%%%%%%%%%%
%% WORDS_IDEAS_OBJECTS
%%%%%%%%%%%%%%%%%%%%%%%%

%% Next should be TRUE

qqqq(believes_words_ideas_objects, tom, now,
     [[denounced_word, tom_denounced_idea, denounced],
      [cicero_word, tom_cicero_idea, cicero],
      [catiline_word, tom_catiline_idea, catiline]])?

%% Next should be FALSE -- not believed

qqqq(believes_words_ideas_objects, tom, now,
     [[denounced_word, tom_denounced_idea, denounced],
      [tully_word, tom_tully_idea, cicero],
      [catiline_word, tom_catiline_idea, catiline]])?

%% Next should be FALSE -- wrong type

qqqq(believes_words_ideas_objects, tom, now,
     [[tully_word, tom_tully_idea, cicero],
      [tully_word, tom_tully_idea, cicero],
      [catiline_word, tom_catiline_idea, catiline]])?

%% Next should be FALSE -- wrong type

qqqq(believes_words_ideas_objects, tom, now,
     [[denounced_word, tom_denounced_idea, denounced],
      [tully_word, tom_tully_word, cicero],
      [denounced_word, tom_denounced_idea, denounced]])?

%% Next should be FALSE -- wrong arity

qqqq(believes_words_ideas_objects, tom, now,
     [[denounced_word, tom_denounced_idea, denounced],
      [cicero_word, tom_cicero_idea]])?

%% Next should be FALSE -- wrong rrrr relation for tully_word

qqqq(believes_words_ideas_objects, tom, now,
     [[denounced_word, tom_denounced_idea, denounced],
      [tully_word, tom_cicero_idea, cicero],
      [catiline_word, tom_catiline_idea, catiline]])?

%% Next should be FALSE -- wrong rrrr relation for cicero_word

qqqq(believes_words_ideas_objects, tom, now,
     [[denounced_word, tom_denounced_idea, denounced],
      [cicero_word, tom_tully_idea, cicero],
      [catiline_word, tom_catiline_idea, catiline]])?


write_stats(Ignore)?

halt?
