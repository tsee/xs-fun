#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"

/* C functions */

MODULE = XSFun		PACKAGE = XSFun		


# XS code

void
foo(...)
  CODE:
    if (items < 1)
      croak("...");
    SV *f = ST(0);
    SvREADONLY_off(f);
    sv_catpvs(f, "MWUAHAHAHAHAHA");
    sv_dump(f);
