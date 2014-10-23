#ifndef __PERL_ALGORITHM_KETAMA__
#define __PERL_ALGORITHM_KETAMA__
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#ifndef floorf
#include <math.h>
#endif

typedef struct {
    char *label;
    unsigned int weight;
} PerlKetama_Bucket;

typedef struct {
    PerlKetama_Bucket *bucket;
    unsigned int point;
} PerlKetama_Continuum_Point;

typedef struct {
    unsigned int numbuckets;
    unsigned int totalweight;
    PerlKetama_Continuum_Point *continuum;
    unsigned int numpoints;
    PerlKetama_Bucket *buckets;
} PerlKetama;

typedef int (*compfn)( const void*, const void* );

#endif /* __PERL_ALGORITHM_KETAMA__ */
