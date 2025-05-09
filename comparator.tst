load comparator.hdl,
output-file comparator.out,
compare-to comparator.cmp,
output-list a%B2.2.2 b%B2.2.2 X%B2.1.2 Y%B2.1.2 Z%B2.1.2;

set a %B00,
set b %B00,
eval,
output;

set a %B00,
set b %B01,
eval,
output;

set a %B00,
set b %B10,
eval,
output;

set a %B00,
set b %B11,
eval,
output;

set a %B01,
set b %B00,
eval,
output;

set a %B01,
set b %B01,
eval,
output;

set a %B01,
set b %B10,
eval,
output;

set a %B01,
set b %B11,
eval,
output;

set a %B10,
set b %B00,
eval,
output;

set a %B10,
set b %B01,
eval,
output;

set a %B10,
set b %B10,
eval,
output;

set a %B10,
set b %B11,
eval,
output;

set a %B11,
set b %B00,
eval,
output;

set a %B11,
set b %B01,
eval,
output;

set a %B11,
set b %B10,
eval,
output;

set a %B11,
set b %B11,
eval,
output;


