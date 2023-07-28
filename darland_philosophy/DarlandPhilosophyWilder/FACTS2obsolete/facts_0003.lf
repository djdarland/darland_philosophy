%% Copyright (C) 2017, 2019, 2020 Dennis J. Darland

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


%% Life database for use with predicates 
%% to simulate Dennis J. Darlands philosophy. 
%% Started Writing 1/4/2017
%% Major re-write starting 8/19/2019
%%
%% Total rewite of what I started about 2007.
%%

%% common_facts_2017_0003.lf    %% Facts primarily about beliefs

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% conventions.
%% tom, quine, cicero etc stand for people (instances of Subjects or Objects.)
%% There could also be non-animate objects such as a table/
%% there (some would argue) might also be non-human Subjects - such as a dog.
%% tom might have an idea of cicero. This would be represented tom_cicero_idea.
%% The 1st tom indicates that it is tom's idea. cicero indicates that it is an
%% idea of cicero. The final idea indicates that it is an idea.
%% tom might have an word in a shared language for cicero. This is indicated by %% cicero_word. 
%% quine might also an idea quine_cicero_idea of cicero. (note his idea is
%% different). quine might share, however the word cicero_word with tom.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% believes_in_ideas is the only primitive belief relation
%% needed.
%% I define several others in terms of them. 
%%
qqqq(believes_ideas_synonymous, quine, quine_cicero_idea, quine_tully_idea).

qqqq(believes_ideas_synonymous, quine, quine_of_De_Senectute_idea, quine_of_orations_idea).

qqqq(believes_ideas_not_synonymous, tom, tom_of_De_Senectute_idea, tom_of_orations_idea).

qqqq(believes_in_ideas, tom, now, [tom_of_orations_idea, tom_cicero_idea]).

qqqq(believes_in_ideas, tom, now, [tom_of_De_Senectute_idea, tom_tully_idea]).

qqqq(believes_in_ideas, quine, now, [quine_of_orations_idea,
				     quine_cicero_idea]).

qqqq(believes_in_ideas, tom, now, [tom_human_idea, tom_tully_idea]).

qqqq(believes_in_ideas, tom, now, [tom_denounced_idea, tom_cicero_idea,
				   tom_catiline_idea]).

qqqq(believes_not_in_ideas, tom, now, [tom_denounced_idea, tom_tully_idea,
				       tom_catiline_idea]).

qqqq(believes_in_ideas, quine, now, [quine_denounced_idea,
				     quine_cicero_idea,
				     quine_catiline_idea]).

qqqq(believes_in_ideas, quine, now, [quine_denounced_idea,
				     quine_tully_idea,
				     quine_catiline_idea]).

qqqq(human, tom).

qqqq(human, cicero).

qqqq(human, catiline).

qqqq(featherless_biped, tom).

qqqq(featherless_biped, cicero).

qqqq(featherless_biped, catiline).

qqqq(american, tom).

qqqq(roman, cicero).

qqqq(roman, catiline).

qqqq(denounced, cicero, catiline).

qqqq(denounced, tom, catiline).

qqqq(believes_not_in_ideas, dennis, now,
		      [martian_idea,
		      cicero_idea]).

qqqq(believes_not_in_ideas, dennis, now, 
		      [martian_idea,
		      tully_idea]).

qqqq(believes_not_in_ideas, dennis, now, 
		      [martian_idea,
		      bertie_idea]).

qqqq(believes_not_in_ideas, dennis, now, 
		      [martian_idea,
		      ludwig_idea]).
