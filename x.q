// globals

A:()!() 										/ aggregations
B:()
C::.ht.visible[Q;G]I 							/ visible columns
D:()
E:()
F:0#` 											/ aggregated columns
G:0#` 											/ grouping columns
H::.ht.groupable T 								/ groupable columns
I::.ht.invisible[W;T;A;Q;F]G 					/ invisible columns
J:0b 											/ filter infinities?
K:(::) 											/ sort vector
L:1b 											/ show leaves?
M:()
N::count get T 									/ row count
O.:(::) 										/ properties
P:.ht.P 										/ path	
Q::.ht.qtype Z 									/ types
R:`start`end!0 60 								/ rows
S:()!() 										/ sort
T:`t 											/ input table
U:1b 											/ update?
V::.js.var T 									/ does T exist
W:(();();();()) 								/ pivot state
Y::G 0 											/ Y axis
X::$[count W 1;first 1_G except W[1;;1];G 1]	/ X axis
Z:`z 											/ output table
