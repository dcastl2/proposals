set pm3d

set xtics ("Knowledge" 1, "Comprehension" 2, "Application" 3, "Analysis" 4, "Evaluation" 5, "Synthesis" 6)
set ytics ("Expressions" 1, "Selection" 2, "Repetition" 3, "Functions" 4, "Arrays" 5, "File I/O" 6)
set ztics ("Math" -3, "Physics" -2, "Chemistry" -1, "Biology" 0, "Psychology" 1, "Art" 2, "Music" 3)
set xrange[1:6]
set yrange[1:6]
set zrange[-3:3]
set title "Student trait abilities"

set terminal postscript
set output "lattice.ps"
splot "lattice.dat" u 1:2:3:4 with pm3d 
