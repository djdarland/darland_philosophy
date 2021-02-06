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
load("RULES2/rules_0001.lf")?
load("FACTS2/facts_0001.lf")?

trace_input(true)?

write_time(Ignore)?

%% I indicate for each query whether the immediate response should be.

%% TRUE = Yes or FALSE = No.

%% There may be subsequient No responses - as I have asked for more answers with semicolons.

%% Next should be TRUE.

rrrr( tom, now, of_orations_word, tom_of_orations_idea)?

%% Next should be TRUE.

ssss( tom, now, tom_of_orations_idea, of_orations)?

%% Next should be TRUE.

rrrr( tom, now, of_De_Senectute_word, tom_of_De_Senectute_idea)?

%% Next should be TRUE.

ssss( tom, now, tom_of_De_Senectute_idea, of_De_Senectute)?

%% Next should be TRUE.

rrss( tom, now, of_orations_word, of_orations)?

%% Next should be TRUE.

rrss( tom, now, of_De_Senectute_word, of_De_Senectute)?

%% Next should be TRUE.

rrrr( quine, now, of_orations_word, quine_of_orations_idea)?

%% Next should be TRUE.

ssss( quine, now, quine_of_orations_idea, of_orations)?

%% Next should be TRUE.

rrrr( quine, now, of_De_Senectute_word, quine_of_De_Senectute_idea)?

%% Next should be TRUE.

ssss( quine, now, quine_of_De_Senectute_idea, of_De_Senectute)?

%% Next should be TRUE.

rrrr( tom, now, denounced_word, tom_denounced_idea)?

%% Next should be TRUE.

ssss( tom, now, tom_denounced_idea, denounced)?

%% Next should be TRUE.

rrrr( tom, now, cicero_word, tom_cicero_idea)?

%% Next should be TRUE.

ssss( tom, now, tom_cicero_idea, cicero)?

%% Next should be TRUE.

rrrr( tom, now, catiline_word, tom_catiline_idea)?

%% Next should be TRUE

ssss( tom, now, tom_catiline_idea, catiline)?

%% Next should be FALSE.

rrrr( tom, now, cicero_word, tom_tully_idea)?

%% Next should be TRUE.

rrrr( tom, now, tully_word, tom_tully_idea)?

%% Next should be FALSE.

rrrr( tom, now, tully_word, tom_cicero_idea)?

%% Next should be TRUE.

rrss( tom, now, cicero_word, cicero)?

%% Next should be TRUE - There is no Tully separate from cicero, just idea

rrss( tom, now, tully_word, cicero)?

%% Next should be TRUE.

rrss( tom, now, catiline_word, catiline)?

%% Next should be TRUE.

rrss( tom, now, denounced_word, denounced)?

%% Next should be TRUE.

rrrr( quine, now, denounced_word, quine_denounced_idea)?

%% Next should be TRUE.

ssss( quine, now, quine_denounced_idea, denounced)?

%% Next should be TRUE.

rrrr( quine, now, cicero_word, quine_cicero_idea)?

%% Next should be TRUE.

ssss( quine, now, quine_cicero_idea, cicero)?

%% Next should be TRUE.

rrrr( quine, now, cicero_word, quine_tully_idea)?

%% Next should be TRUE.

rrrr( quine, now, tully_word, quine_tully_idea)?

%% Next should be TRUE.

rrrr( quine, now, tully_word, quine_cicero_idea)?

%% Next should be TRUE.

ssss( quine, now, quine_tully_idea, cicero)?

%% Next should be TRUE.

rrss( quine, now, cicero_word, cicero)?

%% Next should be TRUE.

rrss( quine, now, of_orations_word, of_orations)?

%% Next should be TRUE.

rrss( quine, now, of_De_Senectute_word, of_De_Senectute)?

write_stats(Ignore)?

 


