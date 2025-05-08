load P2S.hdl,
output-file P2S.out,
compare-to P2S.cmp,
output-list time%S1.4.1 indata%D1.6.1 load%B2.1.2 enable%B2.1.2 complete%B2.1.2 sout%D1.6.1;

set indata 11,
set load 1,
tick,
tock,

output;

set indata 0,
set load 0,
tick,
tock,

output;


tick,
tock,
output;

tick,
tock,
output;

set enable 1,
tick,
tock,

output;

set enable 0,
tick,
tock,

output;

tick,
tock,

output;

tick,
tock,

output;

tick,
tock,

output;

tick,
tock,

output;

set enable 1,
tick,
tock,

output;

tick,
tock,

output;

tick,
tock,

output;

tick,
tock,

output;

tick,
tock,

output;

tick,
tock,

output;

tick,
tock,

output;

tick,
tock,

output;

tick,
tock,

output;

set enable 0;

tick,
tock,

output;

tick,
tock,

output;

tick,
tock,

output;

set indata 15,
set load 1,
tick,
tock,
output;

set load 0,
set indata 0,
tick,
tock,
output;

tick,
tock,
output;

set enable 1,
tick,
tock,
output;

set enable 0,
tick,
tock,
output;

tick,
tock,
output;

tick,
tock,
output;

tick,
tock,
output;

tick,
tock,
output;

tick,
tock,
output;




