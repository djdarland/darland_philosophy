
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


%% Life database for use with predicates 
%% to simulate Dennis J. Darlands philosophy. 
%% Started Writing 1/4/2017
%% Major re-write starting 8/19/2019
%%
%% Total rewite of what I started about 2007.
%%

%% common_facts_2017_0001.lf    %% Facts primarily about understanding

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% conventions.
%% tom, quine, cicero etc stand for people (instances of Subjects or Objects.)
%% There could also be non-animate objects such as a table.
%% there (some would argue) might also be non-human Subjects - such as a dog.
%% tom might have an idea of cicero. This would be represented tom_cicero_idea.
%% The 1st tom indicates that it is tom's idea. cicero indicates that it is an
%% idea of cicero. The final idea indicates that it is an idea.
%% tom might have an word in a shared language for cicero. This is indicated by %% cicero_word. 
%% quine might also an idea quine_cicero_idea of cicero. (note his idea is
%% different). quine might share, however the word cicero_word with tom.

%% words are related to ideas.
%% The words being shared through learning.

%% relates words to ideas.

%% rrrr( Type, Subject, Time, A_word, A_idea)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rrrr( tom, now, russell_word, tom_russell_idea).
rrrr( tom, now, quine_word, tom_quine_idea).
rrrr( tom, now, cicero_word, tom_cicero_idea).
rrrr( tom, now, santa_word, tom_santa_idea).
rrrr( tom, now, catiline_word, tom_catiline_idea).
rrrr( tom, now, tully_word, tom_tully_idea).
rrrr( tom, now, flipper_class_word, tom_flipper_class_idea).
rrrr( tom, now, misty_class_word, tom_misty_class_idea).
rrrr( tom, now, cat_class_word, tom_cat_class_idea).
rrrr( tom, now, rosie_class_word, tom_rosie_class_idea).
rrrr( tom, now, denounced_word, tom_denounced_idea).
rrrr( tom, now, roman_word, tom_roman_idea).
rrrr( tom, now, american_word, tom_american_idea).
rrrr( tom, now, dolphin_word, tom_dolphin_idea).
rrrr( tom, now, intelligent_fish_word, tom_intelligent_fish_idea).
rrrr( tom, now, human_word, tom_human_idea).
rrrr( tom, now, dolphin_class_word, tom_dolphin_class_idea).
rrrr( tom, now, intelligent_fish_class_word, tom_intelligent_fish_class_idea).
rrrr( tom, now, roman_class_word, tom_roman_class_idea).
rrrr( tom, now, human_class_word, tom_human_class_idea).
rrrr( tom, now, american_class_word, tom_american_class_idea).
rrrr( tom, now, featherless_biped_class_word, tom_featherless_biped_class_idea).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
rrrr( quine, now, russell_word, quine_russell_idea).
rrrr( quine, now, quine_word, quine_quine_idea).
rrrr( quine, now, santa_word, quine_santa_idea).
rrrr( quine, now, catiline_word, quine_catiline_idea).
rrrr( quine, now, cicero_word, quine_cicero_idea).
rrrr( quine, now, tully_word, quine_tully_idea).
rrrr( quine, now, denounced_word, quine_denounced_idea).
rrrr( quine, now, roman_word, quine_roman_idea).
rrrr( quine, now, human_word, quine_human_idea).
rrrr( quine, now, dolphin_word, quine_dolphin_idea).
rrrr( quine, now, dolphin_class_word, quine_dolphin_class_idea).
rrrr( quine, now, roman_class_word, quine_roman_class_idea).
rrrr( quine, now, human_class_word, quine_human_class_idea).
rrrr( quine, now, featherless_biped_class_word, quine_featherless_biped_class_idea).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ssss( Type, Subject, Time, A_idea, A_object)
%%
%% there are two ideas for the same person - cicero (tully)
%% but prolog & wild life cannot let two atoms be identical 
%% so the object must be the same for both (cicero)
%%
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ssss( tom, now, tom_russell_idea, russell).
ssss( tom, now, tom_quine_idea, quine).
ssss( tom, now, tom_cicero_idea, cicero).
ssss( tom, now, tom_tully_idea, cicero).
ssss( tom, now, tom_catiline_idea, catiline).
ssss( tom, now, tom_denounced_idea, denounced).
ssss( tom, now, tom_mortal_idea, mortal).
ssss( tom, now, tom_human_idea, human).
ssss( tom, now, tom_dolphin_idea, dolphin).
ssss( tom, now, tom_intelligent_fish_idea, intelligent_fish).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ssss( quine, now, quine_russell_idea, russell).
ssss( quine, now, quine_quine_idea, quine).
ssss( quine, now, quine_cicero_idea, cicero).
ssss( quine, now, quine_tully_idea, cicero).
ssss( quine, now, quine_catiline_idea, catiline).
ssss( quine, now, quine_denounced_idea, denounced).
ssss( quine, now, quine_mortal_idea, mortal).
ssss( quine, now, quine_human_idea, human).
ssss( quine, now, quine_dolphin_idea, dolphin).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ssss( tom, now, tom_roman_idea, roman).
ssss( tom, now, tom_american_idea, american).
ssss( quine, now, quine_roman_idea, roman).
ssss( quine, now, quine_american_idea, american).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
tttt( tom, now, tom_flipper_class_idea, flipper).
tttt( tom, now, tom_cat_class_idea, misty).
tttt( tom, now, tom_cat_class_idea, rosie).
tttt( tom, now, tom_intelligent_fish_class_idea, flipper).
tttt( tom, now, tom_dolphin_class_idea, dolphin).
tttt( tom, now, tom_roman_class_idea, cicero).
tttt( tom, now, tom_roman_class_idea, catiline).
tttt( tom, now, tom_human_class_idea, cicero).
tttt( tom, now, tom_human_class_idea, catiline).
tttt( tom, now, tom_human_class_idea, russell).  %% one more to diff roman
tttt( tom, now, tom_american_class_idea, russell).  %% one more to diff roman
tttt( tom, now, tom_american_class_idea, quine).  %% one more to diff roman
tttt( tom, now, tom_featherless_biped_class_idea, cicero).
tttt( tom, now, tom_featherless_biped_class_idea, catiline).
tttt( tom, now, tom_featherless_biped_class_idea, russell).
tttt( quine, now, quine_dolphin_class_idea, dolphin_class).
tttt( quine, now, quine_roman_class_idea, cicero).
tttt( quine, now, quine_roman_class_idea, catiline).
tttt( quine, now, quine_human_class_idea, cicero).
tttt( quine, now, quine_human_class_idea, catiline).
tttt( quine, now, quine_human_class_idea, russell).
tttt( quine, now, quine_featherless_biped_class_idea, cicero).
tttt( quine, now, quine_featherless_biped_class_idea, catiline).
tttt( quine, now, quine_featherless_biped_class_idea, russell).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% There are several understands relations symbols defined in terms of the
%% words and ideas.
%% This solve a problem that some philosophers have if a sentence was never
%% uttered. I only require that there was an relation_idea and
%% ideas of objects. They never even need to be related or believed.
%% Only ideas have arities and types.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
arity_idea( tom_denounced_idea, 2).
arity_idea( tom_roman_idea, 1).
arity_idea( tom_american_idea, 1).
arity_idea( tom_mortal_idea, 1).
arity_idea( tom_human_idea, 1).
arity_idea( tom_dolphin_idea, 1).
arity_idea( tom_intelligent_fish_idea, 1).
type_idea( tom_denounced_idea, 1).
type_idea( tom_mortal_idea, 2).
type_idea( tom_human_idea, 1).
type_idea( tom_dolphin_idea, 1).
type_idea( tom_cat_idea, 1).
type_idea( tom_intelligent_fish_idea, 1).
type_idea( tom_roman_idea, 1).
type_idea( tom_dolphin_class_idea, 1).
type_idea( tom_intelligent_fish_class_idea, 1).
type_idea( tom_roman_class_idea, 1).
type_idea( tom_human_class_idea, 1).
type_idea( tom_featherless_biped_class_idea, 1).
type_idea( tom_american_idea, 1).
type_idea( tom_russell_idea, 0).
type_idea( tom_quine_idea, 0).
type_idea( tom_cicero_idea, 0).
type_idea( tom_santa_idea, 0).
type_idea( tom_tully_idea, 0).
type_idea( tom_catiline_idea, 0).
number_idea( tom_mortal_idea, singular).
number_idea( tom_human_idea, singular).
number_idea( tom_flipper_class_idea, plural).
number_idea( tom_cat_class_idea, plural).
number_idea( tom_misty_class_idea, plural).
number_idea( tom_rosie_class_idea, plural).
number_idea( tom_dolphin_idea, singular).
number_idea( tom_intelligent_fish_idea, singular).
number_idea( tom_denounced_idea, singular).
number_idea( tom_roman_idea, singular).
number_idea( tom_dolphin_class_idea, plural).
number_idea( tom_intelligent_fish_class_idea, plural).
number_idea( tom_american_class_idea, plural).
number_idea( tom_roman_class_idea, plural).
number_idea( tom_human_class_idea, plural).
number_idea( tom_featherless_biped_class_idea, plural).
number_idea( tom_american_idea, singular).
number_idea( tom_russell_idea, singular).
number_idea( tom_quine_idea, singular).
number_idea( tom_cicero_idea, singular).
number_idea( tom_santa_idea, singular).
number_idea( tom_tully_idea, singular).
number_idea( tom_catiline_idea, singular).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
arity_idea( quine_denounced_idea, 2).
arity_idea( quine_roman_idea, 1).
arity_idea( quine_mortal_idea, 1).
arity_idea( quine_human_idea, 1).
arity_idea( quine_dolphin_idea, 1).
arity_idea( quine_american_idea, 1).
type_idea( quine_roman_idea, 1).
type_idea( quine_american_idea, 1).
type_idea( quine_denounced_idea, 1).
type_idea( quine_human_idea, 1).
type_idea( quine_dolphin_idea, 1).
type_idea( quine_dolphin_class_idea, 1).
type_idea( quine_roman_class_idea, 1).
type_idea( quine_human_class_idea, 1).
type_idea( quine_featherless_biped_class_idea, 1).
type_idea( quine_mortal_idea, 2).
type_idea( quine_russell_idea, 0).
type_idea( quine_quine_idea, 0).
type_idea( quine_santa_idea, 0).
type_idea( quine_cicero_idea, 0).
type_idea( quine_tully_idea, 0).
type_idea( quine_catiline_idea, 0).
number_idea( quine_mortal_idea, singular).
number_idea( quine_denounced_idea, singular).
number_idea( quine_roman_idea, singular).
number_idea( quine_human_idea, singular).
number_idea( quine_dolphin_idea, singular).
number_idea( quine_dolphin_class_idea, plural).
number_idea( quine_roman_class_idea, plural).
number_idea( quine_human_class_idea, plural).
number_idea( quine_featherless_biped_class_idea, plural).
number_idea( quine_american_idea, singular).
number_idea( quine_russell_idea, singular).
number_idea( quine_quine_idea, singular).
number_idea( quine_santa_idea, singular).
number_idea( quine_tully_idea, singular).
number_idea( quine_cicero_idea, singular).
number_idea( quine_catiline_idea, singular).
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

%% Beliefs

believes_in_ideas( tom, now, [tom_denounced_idea, tom_cicero_idea,
				   tom_catiline_idea]).

believes_in_ideas( tom, now, [tom_jibberish_idea, tom_cicero_idea,
				   tom_catiline_idea]).

believes_in_ideas( tom, now, [tom_denounced_idea, tom_santa_idea,
				   tom_catiline_idea]).

believes_in_ideas( tom, now, [tom_jibberish_idea, tom_santa_idea,
				   tom_catiline_idea]).

believes_in_ideas( tom, now, [tom_roman_idea, tom_catiline_idea]).

believes_in_ideas( tom, now, [tom_american_idea, tom_russell_idea]).

believes_in_ideas( tom, now, [tom_denounced_idea, tom_quine_idea,
				   tom_catiline_idea]).

believes_in_ideas( quine, now, [quine_denounced_idea, quine_cicero_idea,
				   quine_catiline_idea]).

believes_in_ideas( quine, now, [tom_denounced_idea, tom_tully_idea,
				   tom_catiline_idea]).

disbelieves_in_ideas( tom, now, [tom_denounced_idea, tom_tully_idea,
				       tom_catiline_idea]).

disbelieves_in_ideas( tom, now, [tom_denounced_idea, tom_russell_idea,
				       tom_catiline_idea]).

disbelieves_in_ideas( tom, now, [tom_roman_idea, tom_russell_idea]).

%% A fact -- indicated by qqqq4

qqqq4([denounced, cicero, catiline]).

qqqq4([roman, cicero]).

qqqq4([roman, catiline]).

qqqq4([american, tom]).

qqqq4([american, quine]).

qqqq4([denounced, cicero, catiline]).

%% Negative facts -- indicated by qqqq5

qqqq5([denounced, russell, catiline]).

qqqq5([american, russell]).

qqqq5([roman, russell]).

qqqq5([denounced, quine, catiline]).

%% was a function for experimenting
%% denounced(cicero, catiline) -> true.
qqqq4([dolphin, flipper]).
qqqq4([intelligent_fish, flipper]).
qqqq4([human, cicero]).
qqqq4([human, catiline]).
qqqq4([human, russell]).
qqqq4([human, quine]).


