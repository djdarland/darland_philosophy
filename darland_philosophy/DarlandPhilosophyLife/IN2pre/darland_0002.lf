

%% Copyright (C) 2017, 2021 Dennis J. Darland

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
%% dynamic(qqqq)?
load("RULES2/life_0001.lf")?    %% Rules particularly for WildLIFE
load("RULES2/life_0002.lf")?    %% Rules particularly for WildLIFE
load("FACTS2/facts_0001.lf")?
load("FACTS2/facts_0002.lf")?
load("RULES2/rules_0001.lf")?  %% Rules about Understanding

write_time(Ignore)?

remark(2001, Remark)?

remark(2002, Remark)?

quote_note(br0006, Author, Author_Article, Author_Book, Article_Title, Book_Title, Pages, Quotation, Article_Year, Book_Year, Note1, Notes_Article, Notes_Book)?

quote_note(br0007, Author, Author_Article, Author_Book, Article_Title, Book_Title, Pages, Quotation, Article_Year, Book_Year, Note1, Notes_Article, Notes_Book)?


trace_input(true)?

qqqq(rrss, Subject, Time, Word, Object)?
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;

	
cond(qqqq(understands_words_objects, tom, now,
	  [[denounced_word, denounced],
	   [cicero_word, cicero],
	   [catiline_word, catiline]]),
     write("tom understands (word-object)  cicero denounced catiline"),
     write("tom does not understand (word-object) cicero denounced catiline"))?

cond(qqqq(understands_words_objects, tom, now,
	  [[denounced_word, denounced],
	   [cicero_word, tully],
	   [catiline_word, catiline]]),
     write("tom understands (word-object)  tully denounced catiline"),
     write("tom does not understand (word-object) tully denounced catiline"))?
    
cond(qqqq(understands_words_ideas_objects, tom, now,
	     [[denounced_word, tom_denounced_idea, denounced],
	      [cicero_word, tom_cicero_idea, cicero],
	      [catiline_word, tom_catiline_idea, catiline]]),
     write("tom understands (word-idea-object) cicero denounced catiline"),
     write("tom does not understand(word-idea-object) cicero denounced catiline"))?   

cond(qqqq(understands_words_ideas_objects, tom, now,
	     [[denounced_word, tom_denounced_idea, denounced],
	      [cicero_word, tom_cicero_idea, tully],
	      [catiline_word, tom_catiline_idea, catiline]]),
     write("tom understands (word-idea-object) tully denounced catiline"),
     write("tom does not understand(word-idea-object) tully denounced catiline"))?   

cond(qqqq(understands_words_ideas_objects, tom, now,
	     [[denounced_word, tom_denounced_idea, denounced],
	      [tully_word, tom_tully_idea, cicero],
	      [catiline_word, tom_catiline_idea, catiline]]),
     write("tom understands (word-idea-object) tully denounced catiline"),
     write("tom does not understand(word-idea-object) tully denounced catiline"))?   

cond(qqqq(understands_words_ideas_objects, tom, now,
	     [[denounced_word, tom_denounced_idea, denounced],
	      [tully_word, tom_tully_idea, tully],
	      [catiline_word, tom_catiline_idea, catiline]]),
     write("tom understands (word-idea-object) tully denounced catiline"),
     write("tom does not understand(word-idea-object) tully denounced catiline"))?   


	
cond(qqqq(understands_words_ideas, tom, now,
	     [[denounced_word, tom_denounced_idea],
	      [cicero_word, tom_cicero_idea],
	      [catiline_word, tom_catiline_idea]]),
     write("tom understands (word-idea) cicero denounced catiline"),
     write("tom does not understand(word-idea) cicero denounced catiline"))?   

;
	
cond(qqqq(understand_same_objects_by_ideas,
	  tom, now, [[tom_denounced_idea, denounced],[tom_cicero_idea,cicero]],
	  quine, now, [[quine_denounced_idea, denounced],[quine_cicero_idea, cicero]]),
     write("tom and quine understand same (idea-object) by denounced"),
     write("tom and quine do not understand same (idea-object) by denounced"))?

halt?

subjects_understand_same_objects_by_ideas, Subject_1, Time_1,
			       Subject_2, Time_2,
			       1, 1,
			       [[Relation_Idea_1, Relation_Idea_2, Relation],
			       [A_Idea_1, A_Idea_2, A_Object]])?
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;



subjects_understand_same_objects_by_ideas, Subject_1, Time_1,
			       Subject_2, Time_2,
			       1, 2,
			       [[Relation_Idea_1, Relation_Idea_2, Relation],
			       [A_Idea_1, A_Idea_2, A_Object],
			       [B_Idea_1, B_Idea_2, B_Object]])?
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;

subjects_understand_same_objects_by_ideas, Subject_1, Time_1, 
					    Subject_2, Time_2,
					    1, 1,
					    Pair_List)?
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;

subjects_understand_same_objects_by_ideas, Subject_1, Time_1,
			       Subject_2, Time_2,
			       1, 2,
			       Pair_List)?
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;

subjects_understand_same_objects_by_words, Subject_1, Time_1, 
					    Subject_2, Time_2,
					    1, 1,
					    Pair_List)?
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;

subjects_understand_same_objects_by_words, Subject_1, Time_1,
			       Subject_2, Time_2,
			       1, 2,
			       Pair_List)?
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;
;




write_stats(Ignore)?


 

`
