// globals

P:.ht.P 						/ path	
S:()!() 						/ sort
W:(();();()) 					/ pivot state
A:()!() 						/ aggregations
O.:(::) 						/ properties
Q::.ht.qtype Z 					/ types
R:`start`end!0 60 				/ rows
J:0b 							/ filter infinities?
L:1b 							/ show leaves?
U:0b 							/ show underlying records?
T:`t 							/ input table
Z:`z 							/ output table
K:(::) 							/ sort vector
F:0#` 							/ aggregated columns
G:0#` 							/ grouping columns
I::.ht.invisible[W;T;A;Q;F]G 	/ invisible columns
C::.ht.visible[Q;G]I 			/ visible columns
H::.ht.groupable T 				/ groupable columns
