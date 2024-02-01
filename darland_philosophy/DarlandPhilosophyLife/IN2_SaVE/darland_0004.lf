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
%% This file only checks rules (relating to understanding about belief as I define it). 
%% In WildLife queries end in a question mark - in Prolog in a period
%%
%% In Wilidife extra ";" are echoed but otherwise ignored - in Prolog they 
%% cause errors.
%%

%% This is to find all beliefs - some problems using find_all.

dynamic(qqqq)?
load("FACTS2/facts_0001.lf")?
load("FACTS2/facts_0002.lf")?
load("FACTS2/facts_0003.lf")?
load("RULES2/rules_0001.lf")?
load("RULES2/rules_0002.lf")?
load("RULES2/life_0001.lf")?
trace_input(true)?

write_time(Ignore)?



remark(4001, Remark)?

remark(4002, Remark)?

%%
%% Next find all (there are a lot fewer beliefs than understandings
%% (at least in my database)
%%

find_all([Subject, Time, 1, 1,
	  [[Relation_Word, Relation_Idea, Relation],
	  [A_Word, A_Idea, A_Object]]],
	 believes_word_idea_object_A(Subject, Time, 1, 1,
				      [[Relation_Word, Relation_Idea, Relation],
				      [A_Word, A_Idea, A_Object]]), L)?
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

find_all([Subject, Time, 1, 2,
	  [[Relation_Word, Relation_Idea, Relation],
	  [A_Word, A_Idea, A_Object],
	  [B_Word, B_Idea, B_Object]]],
	 believes_word_idea_object_A(Subject, Time, 1, 2,
				      [[Relation_Word, Relation_Idea, Relation],
				      [A_Word, A_Idea, A_Object],
				      [B_Word, B_Idea, B_Object]]), L)?
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






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

find_all([Subject, Time, 1, 1,
	  [[Relation_Word, Relation_Idea],
	   [A_Word, A_Idea]]],
	 believes_word_idea_A(Subject, Time,  Type, Arity,
			    [[Relation_Word, Relation_Idea],
			     [A_Word, A_Idea]]), L)?
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

find_all([Subject, Time, 1, 2,
	  [[Relation_Word, Relation_Idea],
	   [A_Word, A_Idea],
	   [B_Word, B_Idea]]],
	 believes_word_idea_A(Subject, Time,  Type, Arity,
			    [[Relation_Word, Relation_Idea],
			     [A_Word, A_Idea],
			     [B_Word, B_Idea]]), L)?
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


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

find_all([Subject, Time,  1, 1,
	  [[Relation_Idea, Relation],
	  [A_Idea, A_Object]]],
	 believes_idea_object_A(Subject, Time,  1, 1,
			      [[Relation_Idea, Relation],
			      [A_Idea, A_Object]]), L)?
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

find_all([Subject, Time,  1, 2,
	  [[Relation_Idea, Relation],
	  [A_Idea, A_Object],
	  [B_Idea, B_Object]]],
	 believes_idea_object_A(Subject, Time,  Type, Arity,
			      [[Relation_Idea, Relation],
			      [A_Idea, A_Object],
			      [A_Idea, A_Object]]), L)?
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

find_all([Subject, Time,  1, 1,
	  [[Relation],
	  [A_Object]]],
	 believes_object_A(Subject, Time, 1, 1,
			 [[Relation],
			 [A_Object]]), L)?
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

find_all([Subject, Time,  1, 2,
	  [[Relation],
	  [A_Object],
	  [B_Object]]],
	 believes_object_A(Subject, Time, 1, 2,
			 [[Relation],
			 [A_Object],
			 [B_Object]]), L)?
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

write_stats(Ignore)?

 

