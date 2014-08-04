#!perl
use strict;
use warnings;

use XSFun ':all';

XSFun::foo(undef);
warn undef;

warn "baz";
