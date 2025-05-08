load MultiDecoder.hdl,
output-file MultiDecoder.out,
output-list A%B1.4.1 B%B1.4.1 C%B1.4.1 D%B1.4.1 DigitA%B1.7.1 DigitB%B1.7.1 DigitC%B1.7.1;

set A %B0000,
set B %B0001,
set C %B0000,
eval,
output;

set A %B0001,
set B %B0010,
set C %B0001,
eval,
output;

set A %B0010,
set B %B0011,
set C %B0010,
eval,
output;

set A %B0011,
set B %B0100,
set C %B0011,
eval,
output;

set A %B0100,
set B %B0101,
set C %B0100,
eval,
output;

set A %B0101,
set B %B0110,
eval,
output;

set A %B0110,
set B %B0111,
set C %B0000,
eval,
output;

set A %B0111,
set B %B1000,
eval,
output;

set A %B1000,
set B %B1001,
eval,
output;

set A %B1001,
set B %B1010,
eval,
output;

set A %B1010,
set B %B1011,
eval,
output;

set A %B1011,
set B %B1100,
eval,
output;

set A %B1100,
set B %B1101,
eval,
output;

set A %B1101,
set B %B1110,
eval,
output;

set A %B1110,
set B %B1111,
eval,
output;

set A %B1111,
set B %B0000,
eval,
output;

