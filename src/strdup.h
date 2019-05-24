#ifndef __H_STRDUP
#define __H_STRDUP

#ifndef strdup
#define strdup strdup_reimpl
char * strdup(const char *str);
#endif

#endif
