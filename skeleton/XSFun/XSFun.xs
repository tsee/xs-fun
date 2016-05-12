#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"

/* C functions */

MODULE = XSFun		PACKAGE = XSFun		

SV *
make_rv(SV *foo)
  CODE:
    RETVAL = newSVrv(foo, NULL);
    sv_setiv(RETVAL, 42);
  OUTPUT: RETVAL

SV *
sv_state_dump(SV *foo)
  PREINIT:
    HV *out = newHV();
  CODE:
    RETVAL = newRV_noinc((SV *)out);
    hv_stores(out, "SvPOK", newSViv(SvPOK(foo) ? 1 : 0));
    hv_stores(out, "SvIOK", newSViv(SvIOK(foo) ? 1 : 0));
    hv_stores(out, "SvNOK", newSViv(SvNOK(foo) ? 1 : 0));
    hv_stores(out, "SvPOKp", newSViv(SvPOKp(foo) ? 1 : 0));
    hv_stores(out, "SvIOKp", newSViv(SvIOKp(foo) ? 1 : 0));
    hv_stores(out, "SvNOKp", newSViv(SvNOKp(foo) ? 1 : 0));
  OUTPUT: RETVAL

