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

load("RULES2/life_0001.lf")?
load("FACTS2/facts_0001.lf")?
load("FACTS2/facts_0002.lf")?
load("FACTS2/facts_0003.lf")?
load("RULES2/rules_0001.lf")?
load("RULES2/rules_0002.lf")?
load("RULES2/rules_0003.lf")?
load("RULES2/rules_0004.lf")?
load("RULES2/rules_0007.lf")?
load("RULES2/rules_0006.lf")?
load("RULES2/life_0002.lf")?


trace_input(true)?

write_time(Ignore)?

%% I indicate for each query whether the immediate response should be.

%% TRUE = Yes or FALSE = No.

%% There may be subsequient No responses - as I may have asked for additional answers with semicolons.

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Start Part on Denounced -- Tom

test_understands(tom, now,
		 [[denounced_word], [cicero_word], [catiline_word]],
		 [[tom_denounced_idea], [tom_cicero_idea], [tom_catiline_idea]],
		 [[denounced],[cicero],[catiline]],
		 [[denounced_word, tom_denounced_idea], [cicero_word, tom_cicero_idea], [catiline_word, tom_catiline_idea]],
		 [[denounced_word, denounced], [cicero_word, cicero], [catiline_word, catiline]],
		 [[tom_denounced_idea, denounced], [tom_cicero_idea, cicero], [tom_catiline_idea, catiline]],
		 [[denounced_word, tom_denounced_idea, denounced], [cicero_word, tom_cicero_idea, cicero], [catiline_word, tom_catiline_idea, catiline]])?


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
test_believes(tom, now,
		 [[denounced_word], [cicero_word], [catiline_word]],
		 [tom_denounced_idea, tom_cicero_idea, tom_catiline_idea],
		 [[denounced],[cicero],[catiline]],
		 [[denounced_word, tom_denounced_idea], [cicero_word, tom_cicero_idea], [catiline_word, tom_catiline_idea]],
		 [[denounced_word, denounced], [cicero_word, cicero], [catiline_word, catiline]],
		 [[tom_denounced_idea, denounced], [tom_cicero_idea, cicero], [tom_catiline_idea, catiline]],
	      [[denounced_word, tom_denounced_idea, denounced], [cicero_word, tom_cicero_idea, cicero], [catiline_word, tom_catiline_idea, catiline]])?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
test_believes_true(tom, now,
		 [[denounced_word], [cicero_word], [catiline_word]],
		 [tom_denounced_idea, tom_cicero_idea, tom_catiline_idea],
		 [[denounced],[cicero],[catiline]],
		 [[denounced_word, tom_denounced_idea], [cicero_word, tom_cicero_idea], [catiline_word, tom_catiline_idea]],
		 [[denounced_word, denounced], [cicero_word, cicero], [catiline_word, catiline]],
		 [[tom_denounced_idea, denounced], [tom_cicero_idea, cicero], [tom_catiline_idea, catiline]],
		   [[denounced_word, tom_denounced_idea, denounced], [cicero_word, tom_cicero_idea, cicero], [catiline_word, tom_catiline_idea, catiline]])?

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
test_believes_true_not(tom, now,
		 [[denounced_word], [cicero_word], [catiline_word]],
		 [tom_denounced_idea, tom_cicero_idea, tom_catiline_idea],
		 [[denounced],[cicero],[catiline]],
		 [[denounced_word, tom_denounced_idea], [cicero_word, tom_cicero_idea], [catiline_word, tom_catiline_idea]],
		 [[denounced_word, denounced], [cicero_word, cicero], [catiline_word, catiline]],
		 [[tom_denounced_idea, denounced], [tom_cicero_idea, cicero], [tom_catiline_idea, catiline]],
		 [[denounced_word, tom_denounced_idea, denounced], [cicero_word, tom_cicero_idea, cicero], [catiline_word, tom_catiline_idea, catiline]])?

write(bye)?
halt?
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Start Part on Denounced -- Quine


%%%%%%%%%%%%%%%%%%%%%%%%%%%% Start Part on Denounced -- Russell

denounced_example(tom)?


%%%%%%%%%%%%%%%%%%%%%%%%%%%% Start Part on Other -- Tom

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Start Part on Other -- Quine

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Start Part on Other -- Russell

halt?

write("Next should be TRUE")?

qqqq(believes_in_ideas, tom, now, [tom_of_orations_idea, tom_cicero_idea])?
;

write("Next should be TRUE")?

qqqq(believes_in_ideas, tom, now, [tom_of_De_Senectute_idea, tom_tully_idea])?
;

write("Next should be TRUE")?

qqqq(believes_words, tom, now, [of_orations_word, cicero_word])?
;

write("Next should be TRUE")?

qqqq(believes_words, tom, now, [of_De_Senectute_word, tom_tully_word])?
;

write("Next should be FALSE")?

qqqq(believes_in_ideas, tom, now, [tom_of_orations_idea, tom_tully_idea])?
;

write("Next should be FALSE")?

qqqq(believes_in_ideas, tom, now, [tom_of_De_Senectute_idea, tom_cicero_idea])?
;

write("Next should be FALSE")?

qqqq(believes_words, tom, now, [of_orations_word, tully_word])?
;

write("Next should be FALSE")?

qqqq(believes_words, tom, now, [of_De_Senectute_word, tom_cicero_word])?
;

write("Next should be TRUE")?

qqqq(believes_in_ideas, quine, now, [quine_of_orations_idea,
				     quine_cicero_idea])?
;

write("Next should be TRUE")?

qqqq(believes_in_ideas, quine, now, [quine_of_De_Senectute_idea,
				     quine_tully_idea])?
	 
;

write("Next should be TRUE")?

qqqq(believes_words, quine, now, [of_orations_word,
				     cicero_word])?
;

write("Next should be TRUE")?

qqqq(believes_words, quine, now, [of_De_Senectute_word,
				   tully_word])?

write("Next should be TRUE")?

qqqq(believes_in_ideas, quine, now, [quine_of_orations_idea,
				     quine_tully_idea])?
;

write("Next should be TRUE")?

qqqq(believes_in_ideas, quine, now, [quine_of_De_Senectute_idea,
				     quine_cicero_idea])?
;

write("Next should be TRUE")?

qqqq(believes_words, quine, now, [of_orations_word,
				     tully_word])?
;

write("Next should be TRUE")?

qqqq(believes_words, quine, now, [of_De_Senectute_word,
				   cicero_word])?

;

write("Next should be TRUE")?

qqqq(believes_in_ideas, quine, now, [quine_of_orations_idea,
				     quine_tully_idea])?
;

write("Next should be TRUE")?

qqqq(believes_words, quine, now, [quine_of_De_Senectute_idea,
				   quine_cicero_idea])?
;

%%%%%%%%%%%%%%%%%%%%%%%%%%%% Start Part on Denounced

%% First Tom

write("Next should be TRUE")?

qqqq(believes_words_ideas_objects, tom, now, [[denounced_word,
					      tom_denounced_idea,
					      denounced],
					     [cicero_word,
					      tom_cicero_idea,
					      cicero],
					     [catiline_word,
					      tom_catiline_idea,
					      catiline]]
			   )?
;

qqqq(believes_words_objects, tom, now, [[denounced_word,
					 denounced],
					[cicero_word,
					 cicero],
					[catiline_word,
					 catiline]]
		      )?
;

qqqq(believes_words_ideas, tom, now, [[denounced_word,
				       tom_denounced_idea],
				      [cicero_word,
				       tom_cicero_idea],
				      [catiline_word,
				       tom_catiline_idea]]
		    )?
;

qqqq(believes_ideas_objects, tom, now, [[tom_denounced_idea,
					 denounced],
					[tom_cicero_idea,
					 cicero],
					[tom_catiline_idea,
					 catiline]]
		      )?
;

qqqq(believes_objects, tom, now, [[denounced],
				   [cicero],
				   [catiline]]
		 )?
;


%% Special Tully cases


qqqq(believes_words_ideas_objects, tom, now, [[denounced_word,
					      tom_denounced_idea,
					      denounced],
					     [tully_word,
					      tom_tully_idea,
					      cicero],
					     [catiline_word,
					      tom_catiline_idea,
					      catiline]]
			   )?
;

qqqq(believes_words_objects, tom, now, [[denounced_word,
					 denounced],
					[tully_word,
					 cicero],
					[catiline_word,
					 catiline]]
		      )?
;

qqqq(believes_words_ideas, tom, now, [[denounced_word,
				       tom_denounced_idea],
				      [tully_word,
				       tom_tully_idea],
				      [catiline_word,
				       tom_catiline_idea]]
		    )?
;

qqqq(believes_ideas_objects, tom, now, [[tom_denounced_idea,
					 denounced],
					[tom_tully_idea,
					 cicero],
					[tom_catiline_idea,
					 catiline]]
		      )?
;

qqqq(believes_objects, tom, now, [[denounced],
				   [cicero], % no separate tully
				   [catiline]]
		 )?
;


%%% Now negative beleifs -- Still tom


qqqq(believes_not_words_ideas_objects, tom, now, [[denounced_word,
					      tom_denounced_idea,
					      denounced],
					     [cicero_word,
					      tom_cicero_idea,
					      cicero],
					     [catiline_word,
					      tom_catiline_idea,
					      catiline]]
			   )?
;

qqqq(believes_not_words_objects, tom, now, [[denounced_word,
					 denounced],
					[cicero_word,
					 cicero],
					[catiline_word,
					 catiline]]
		      )?
;

qqqq(believes_not_words_ideas, tom, now, [[denounced_word,
				       tom_denounced_idea],
				      [cicero_word,
				       tom_cicero_idea],
				      [catiline_word,
				       tom_catiline_idea]]
		    )?
;

	
qqqq(believes_not_ideas_objects, tom, now, [[tom_denounced_idea,
					 denounced],
					[tom_cicero_idea,
					 cicero],
					[tom_catiline_idea,
					 catiline]]
		      )?
;

qqqq(believes_not_objects, tom, now, [[denounced],
				   [cicero],
				   [catiline]]
		 )?
;


%% Special Tully cases




qqqq(believes_not_words_ideas_objects, tom, now, [[denounced_word,
					      tom_denounced_idea,
					      denounced],
					     [tully_word,
					      tom_tully_idea,
					      cicero],
					     [catiline_word,
					      tom_catiline_idea,
					      catiline]]
			   )?
;


qqqq(believes_not_words_objects, tom, now, [[denounced_word,
					 denounced],
					[tully_word,
					 cicero],
					[catiline_word,
					 catiline]]
		      )?
;

qqqq(believes_not_words_ideas, tom, now, [[denounced_word,
				       tom_denounced_idea],
				      [tully_word,
				       tom_tully_idea],
				      [catiline_word,
				       tom_catiline_idea]]
		    )?
;

qqqq(believes_not_ideas_objects, tom, now, [[tom_denounced_idea,
					 denounced],
					[tom_tully_idea,
					 cicero],
					[tom_catiline_idea,
					 catiline]]
		      )?
;

qqqq(believes_not_objects, tom, now, [[denounced],
				   [cicero], % no separate tully
				   [catiline]]
		 )?
;






%% End special tom cases


qqqq(believes_not_words_ideas_objects, tom, now, [[denounced_word,
					      tom_denounced_idea,
					      denounced],
					     [tully_word,
					      tom_tully_idea,
					      cicero],  % bcause tully=cicero
					     [catiline_word,
					      tom_catiline_idea,
					      catiline]]
			   )?
;

qqqq(believes_not_words_objects, tom, now, [[denounced_word,
					 denounced],
					[tully_word,
					 cicero],  % because tully=cicero
					[catiline_word,
					 catiline]]
		      )?
;

qqqq(believes_not_words_ideas, tom, now, [[denounced_word,
				       tom_denounced_idea],
				      [tully_word,
				       tom_tully_idea],
				      [catiline_word,
				       tom_catiline_idea]]
		    )?
;

qqqq(believes_not_ideas_objects, tom, now, [[tom_denounced_idea,
					 denounced],
					[tom_tully_idea,
					 cicerio],  % because tully=cicerro
					[tom_catiline_idea,
					 catiline]]
		      )?
;

qqqq(believes_not_objects, tom, now, [[denounced],
				   [cicero],  % no separate tully
				   [catiline]]
		 )?
;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% begin check for contradictory beliefs cases
%% These require too much memory -- commented out.
	
% qqqq(contradicts_words_objects, tom, now, Pair_List)?


% qqqq(contradicts_words_ideas, tom, now, Pair_List)?


% qqqq(contradicts_ideas_objects, tom, now, Pair_List)?


% qqqq(contradicts_objects, tom, now, Object_List)?

%% end conjunction cases

%%%%%%%%%%%%%%%%%%%%%%%%  Next Quine.

qqqq(believes_words_ideas_objects, quine, now, [[denounced_word,
					      quine_denounced_idea,
					      denounced],
					     [cicero_word,
					      quine_cicero_idea,
					      cicero],
					     [catiline_word,
					      quine_catiline_idea,
					      catiline]]
			   )?
;

qqqq(believes_words_objects, quine, now, [[denounced_word,
					 denounced],
					[cicero_word,
					 cicero],
					[catiline_word,
					 catiline]]
		      )?
;

qqqq(believes_words_ideas, quine, now, [[denounced_word,
				       quine_denounced_idea],
				      [cicero_word,
				       quine_cicero_idea],
				      [catiline_word,
				       quine_catiline_idea]]
		    )?
;

qqqq(believes_ideas_objects, quine, now, [[quine_denounced_idea,
					 denounced],
					[quine_cicero_idea,
					 cicero],
					[quine_catiline_idea,
					 catiline]]
		      )?
;

qqqq(believes_objects, quine, now, [[denounced],
				   [cicero],
				   [catiline]]
		 )?
;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
qqqq(believes_words_ideas_objects, quine, now, [[denounced_word,
					      quine_denounced_idea,
					      denounced],
					     [tully_word,
					      quine_tully_idea,
					      cicero], % there is no distinct tully
					     [catiline_word,
					      quine_catiline_idea,
					      catiline]]
			   )?
;

qqqq(believes_words_objects, quine, now, [[denounced_word,
					 denounced],
					[tully_word,
					 cicero], % there is no distinct tully
					[catiline_word,
					 catiline]]
		      )?
;

qqqq(believes_words_ideas, quine, now, [[denounced_word,
				       quine_denounced_idea],
				      [tully_word,
				       quine_tully_idea],
				      [catiline_word,
				       quine_catiline_idea]]
		    )?
;

qqqq(believes_ideas_objects, quine, now, [[quine_denounced_idea,
					 denounced],
					[quine_tully_idea,
					 cicero], % there is no distinct tully
					[quine_catiline_idea,
					 catiline]]
		      )?
;

qqqq(believes_objects, quine, now, [[denounced],
				   [cicero],
				   [catiline]]
		 )?
;

%%%%%%%%%%%%%%%%%%%%%% Next Part 2 of_orations

%%% First tom

qqqq(believes_words_ideas_objects, tom, now, [[of_orations_word,
					      tom_of_orations_idea,
					      of_orations],
					     [cicero_word,
					      tom_cicero_idea,
					      cicero]]
			   )?
;

qqqq(believes_words_objects, tom, now, [[of_orations_word,
					 of_orations],
					[cicero_word,
					 cicero]]
		      )?
;

qqqq(believes_words_ideas, tom, now, [[of_orations_word,
				       tom_of_orations_idea],
				      [cicero_word,
				       tom_cicero_idea]]
		    )?
;

qqqq(believes_ideas_objects, tom, now, [[tom_of_orations_idea,
					 of_orations],
					[tom_cicero_idea,
					 cicero]]
		      )?
;

qqqq(believes_objects, tom, now, [[of_orations],
				   [cicero]]
		 )?
;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
qqqq(believes_words_ideas_objects, tom, now, [[of_orations_word,
					      tom_of_orations_idea,
					      of_orations],
					     [tully_word,
					      tom_tully_idea,
					      cicero]] % there is no distinct tully
			   )?
;

qqqq(believes_words_objects, tom, now, [[of_orations_word,
					 of_orations],
					[tully_word,
					 cicero]] % there is no distinct tully
		      )?
;

qqqq(believes_words_ideas, tom, now, [[of_orations_word,
				       tom_of_orations_idea],
				      [tully_word,
				       tom_tully_idea]]
		    )?
;

qqqq(believes_ideas_objects, tom, now, [[tom_of_orations_idea,
					 of_orations],
					[tom_tully_idea,
					 cicero]] % there is no distinct tully
		      )?
;

qqqq(believes_objects, tom, now, [[of_orations],
				   [cicero]]
		 )?
;

%%%%%%%%%%%%%%%%%%% Next quine


qqqq(believes_words_ideas_objects, quine, now, [[of_orations_word,
					      quine_of_orations_idea,
					      of_orations],
					     [cicero_word,
					      quine_cicero_idea,
					      cicero]]
			   )?
;

qqqq(believes_words_objects, quine, now, [[of_orations_word,
					 of_orations],
					[cicero_word,
					 cicero]]
		      )?
;

qqqq(believes_words_ideas, quine, now, [[of_orations_word,
				       quine_of_orations_idea],
				      [cicero_word,
				       quine_cicero_idea]]
		    )?
;

qqqq(believes_ideas_objects, quine, now, [[quine_of_orations_idea,
					 of_orations],
					[quine_cicero_idea,
					 cicero]]
		      )?
;

qqqq(believes_objects, quine, now, [[of_orations],
				   [cicero]]
		 )?
;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
qqqq(believes_words_ideas_objects, quine, now, [[of_orations_word,
					      quine_of_orations_idea,
					      of_orations],
					     [tully_word,
					      quine_tully_idea,
					      cicero]] % there is no distinct tully
			   )?
;

qqqq(believes_words_objects, quine, now, [[of_orations_word,
					 of_orations],
					[tully_word,
					 cicero]] % there is no distinct tully
		      )?
;

qqqq(believes_words_ideas, quine, now, [[of_orations_word,
				       quine_of_orations_idea],
				      [tully_word,
				       quine_tully_idea]]
		    )?
;

qqqq(believes_ideas_objects, quine, now, [[quine_of_orations_idea,
					 of_orations],
					[quine_tully_idea]]
		      )?
;

qqqq(believes_objects, quine, now, [[of_orations],
				   [cicero]]
		 )?
;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%% Next Part 3 of_De_Senectute

%%% First tom

qqqq(believes_words_ideas_objects, tom, now, [[of_De_Senectute_word,
					      tom_of_De_Senectute_idea,
					      of_De_Senectute],
					     [cicero_word,
					      tom_cicero_idea,
					      cicero]]
			   )?
;

qqqq(believes_words_objects, tom, now, [[of_De_Senectute_word,
					 of_De_Senectute],
					[cicero_word,
					 cicero]]
		      )?
;

qqqq(believes_words_ideas, tom, now, [[of_De_Senectute_word,
				       tom_of_De_Senectute_idea],
				      [cicero_word,
				       tom_cicero_idea]]
		    )?
;

qqqq(believes_ideas_objects, tom, now, [[tom_of_De_Senectute_idea,
					 of_De_Senectute],
					[tom_cicero_idea,
					 cicero]]
		      )?
;

qqqq(believes_objects, tom, now, [[of_De_Senectute],
				   [cicero]]
		 )?
;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
qqqq(believes_words_ideas_objects, tom, now, [[of_De_Senectute_word,
					      tom_of_De_Senectute_idea,
					      of_De_Senectute],
					     [tully_word,
					      tom_tully_idea,
					      cicero]] % there is no distinct tully
			   )?
;

qqqq(believes_words_objects, tom, now, [[of_De_Senectute_word,
					 of_De_Senectute],
					[tully_word,
					 cicero]] % there is no distinct tully
		      )?
;

qqqq(believes_words_ideas, tom, now, [[of_De_Senectute_word,
				       tom_of_De_Senectute_idea],
				      [tully_word,
				       tom_tully_idea]]
		    )?
;

qqqq(believes_ideas_objects, tom, now, [[tom_of_De_Senectute_idea,
					 of_De_Senectute],
					[tom_tully_idea,
					 cicero]] % there is no distinct tully
		      )?
;

qqqq(believes_objects, tom, now, [[of_De_Senectute],
				   [cicero]]
		 )?
;

%%%%%%%%%%%%%%%%%%% Next quine


qqqq(believes_words_ideas_objects, quine, now, [[of_De_Senectute_word,
					      quine_of_De_Senectute_idea,
					      of_De_Senectute],
					     [cicero_word,
					      quine_cicero_idea,
					      cicero]]
			   )?
;

qqqq(believes_words_objects, quine, now, [[of_De_Senectute_word,
					 of_De_Senectute],
					[cicero_word,
					 cicero]]
		      )?
;

qqqq(believes_words_ideas, quine, now, [[of_De_Senectute_word,
				       quine_of_De_Senectute_idea],
				      [cicero_word,
				       quine_cicero_idea]]
		    )?
;

qqqq(believes_ideas_objects, quine, now, [[quine_of_De_Senectute_idea,
					 of_De_Senectute],
					[quine_cicero_idea,
					 cicero]]
		      )?
;

qqqq(believes_objects, quine, now, [[of_De_Senectute],
				   [cicero]]
		 )?
;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
qqqq(believes_words_ideas_objects, quine, now, [[of_De_Senectute_word,
					      quine_of_De_Senectute_idea,
					      of_De_Senectute],
					     [tully_word,
					      quine_tully_idea,
					      cicero]] % there is no distinct tully
			   )?
;

qqqq(believes_words_objects, quine, now, [[of_De_Senectute_word,
					 of_De_Senectute],
					[tully_word,
					 cicero]] % there is no distinct tully
		      )?
;

qqqq(believes_words_ideas, quine, now, [[of_De_Senectute_word,
				       quine_of_De_Senectute_idea],
				      [tully_word,
				       quine_tully_idea]]
		    )?
;

qqqq(believes_ideas_objects, quine, now, [[quine_of_De_Senectute_idea,
					 of_De_Senectute],
					[quine_tully_idea]]
		      )?
;

qqqq(believes_objects, quine, now, [[of_De_Senectute],
				   [cicero]]
		 )?
;
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


write_stats(Ignore)?

 


