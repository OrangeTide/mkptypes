Here is mkptypes, a program for generating prototype declarations for all
functions appearing in a C source file. The input C code may be either
K&R or ANSI C (i.e. it's OK if the functions are defined using prototypes).
Unlike some of the sed-based scripts floating around, it (usually)
handles prototype promotion (e.g. the prototype for 'int foo() char x;...'
is 'int foo(int x)'). Also, it should work OK on just about any computer,
not just Unix-based ones (it's been tested under minix, Unix, and TOS).

Use: typically, you would type 'mkptypes *.c >proto.h' and then add a
'#include "proto.h"' line to all the C source files. An ANSI conformant
compiler will then be able to do type checking on function calls across
module boundaries. As a bonus, proto.h will tell you which source files
functions were defined in, and (if you gave the -n function to mkptypes)
their line numbers. The resulting include file may also be used by
non-ANSI compilers; you can disable this feature (for cleaner, strictly
ANSI-conforming output) with the -A flag. See the mkptypes.man file for
a description of all the flags mkptypes accepts.

Please read the description of bugs in mkptypes.man; definitely mkptypes
will not handle all programs correctly, but it does work on the majority of
them. A sample of its output is provided in the file "mkptypes.h"; this
is the result of 'mkptypes mkptypes.c >mkptypes.h'.

There is ABSOLUTELY NO WARRANTY for the program; as I said, it doesn't work
on all programs (complicated function definitions can make it produce bogus
output). It does what I need, though, and it can certainly make porting stuff
to ANSI compilers easier.

An earlier version of mkptypes was released on Usenet under the name
"mkproto". This version has several new command line options, and some bug
fixes. It has been renamed to avoid conflict with a file system utility
available under some versions of Unix.

Mkptypes is in the public domain. If you find any bugs (other than the ones
documented) please let me know.
--
Eric R. Smith                     email:
Dept. of Mathematics            ersmith@uwovax.uwo.ca
University of Western Ontario   ersmith@uwovax.bitnet
London, Ont. Canada N6A 5B7
ph: (519) 661-3638
