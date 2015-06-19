// js utilities

.js.nnd:{$[99=type x;.z.s each(key[x]except`)#x;x]}
.js.sub:{i:(::;.js.inf)y;flip each(i 1#x;.js.idx[i 1_x]. z`start`end)}
.js.idx:{$[0 0W~y,z;x;y>=count x;0#x;((1+z-y)&count r)#r:y _ x]}
.js.ret:{x,.js.obj[]}
.js.sym:{$[()~x;0#`;(t:abs type x)in 0 99h;.z.s each x;10=t;`$x;x]}
.js.inf:{k:exec c!t$1%0 from meta x where t in"ijf";![x;();0b;key[k]!({@[x;where x in y,neg y;:;first 0#x]};;)'[key k;get k]]}
.js.opt:{$[0=count x 0;z;not`columns in key z;z;not x[0;0]in key z`columns;z;@[z;`columns;:;y!count[y]#z[`columns]x[0;0]]]}

/ object -> js
.js.obj:{(!). flip((`Z    ;.js.sub[get Z;J]R);
                   (`F    ;C);
                   (`G 		;G);
                   (`H 		;H);
                   (`I 		;I);
                   (`Q 		;Q);
                   (`S 		;`cols`sorts!reverse each(key S;get S));
                   (`R 		;R);
                   (`N 		;count get Z);
                   (`T 		;first T);
                   (`O 		;.js.nnd .js.opt[W;C]O);
                   (`C    ;.js.cic[Q;G]W);
                   (`U 		;not U);
                   (`V 		;V&0=count W 0);
                   (`W    ;count[G]>2+count W 1);
                   (`M 		;.js.msg[G;S]W))}

/ icons
.js.cic:{
 k:key[x]except`;
 $[0=count y;
   ()!();
   [w:0=count z 0;
    n:count k;
    ((1#`g_)!1#`u` w),$[w;
                        k!n#`d;
                        (`,k)!`,n#`d`u count[y]=2+count z 1]]]}

/ state -> message
.js.msg:{[g;s;w]
 r:()!();
 r[`Table`Rows]:(string T;string count get T);
 if[count g       ;r[`Groups]:","sv string g];
 if[count s       ;r[`Sorts]:","sv string[key s]{$[x~"g_";"Hierarchy";x],"[",y,"]"}'string get s];
 if[count w 0     ;r[`Pivot]:string w[0;0];r[`Y]:string first g;if[not count w 1;r[`X]:string g 1]];
 if[count w 1     ;r[`Where]:","sv({y,"=",z 0}.)each string w 1;r[`X]:string g 1+g?last w[1;;1]];
 (asc key r)#r}


