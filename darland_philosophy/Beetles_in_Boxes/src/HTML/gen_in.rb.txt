##  Copyright (C) 2017 Dennis J. Darland

##  This file is part of darland's philosophy.

##  darland's philosophy is free software: you can redistribute it and/or modify
##  it under the terms of the GNU General Public License as published by
##  the Free Software Foundation, either version 3 of the License, or
##  (at your option) any later version.

##  darland's philosophy is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.

##  You should have received a copy of the GNU General Public License
##  along with darland's philosophy.  If not, see <http://www.gnu.org/licenses/>.



def process(it)
  count = 0
  if ((infile = File.new("BASE/darland_2017_" + it.to_s + ".bs","r")) and 
      (outfile_life = File.new("../DarlandPhilosophyLife/IN/darland_2017_" + it.to_s + ".lf","w")) and
      (outfile_prolog = File.new("../DarlandPhilosophySwi/swi/darland_2017_" + it.to_s + ".pl","w")))
  then 
    while linein = infile.gets
      count += 1
      lineout_lf = lifeline(linein)
      lineout_pl = swiline(linein)
      outfile_life.puts(lineout_lf)
      outfile_prolog.puts(lineout_pl)
    end 
    infile.close
    outfile_life.close
    outfile_prolog.close
    puts count.to_s + " lines processed in file " + it.to_i.to_s + "."
  else puts("no input file " + "BASE/darland_2017" + it.to_s + ".bs")
  end
end

def swiline(linein)
  linesave = linein
  if linein.sub!(/%%LIFE =/,"")
    then lineout = " "
    else lineout = linesave 
  end
  lineout = lineout.sub(/%%PROLOG =/,"")
  lineout = lineout.sub("?",".")
  return lineout
end

def lifeline(linein)
  linesave = linein
  if linein.sub!(/%%PROLOG =/,"")
    then lineout = " "
    else lineout = linesave 
  end
  lineout = lineout.sub(/%%LIFE =/,"")
  return lineout
end

def do_all
  no = 1
  no_str = no.to_s
  len = 4 - no_str.size
  pd = "0" * len
  it = pd + no_str
  while File.exist?("BASE/darland_2017_" + it.to_s + ".bs")
    process(it)
    no += 1
    no_str = no.to_s
    len = 4 - no_str.size
    pd = "0" * len
    it = pd + no_str
  end
end

do_all
