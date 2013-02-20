#if defined(__STDC__) || defined(__cplusplus)
# define P_(s) s
#else
# define P_(s) ()
#endif


/* mkptypes.c */
Word *word_alloc P_((char *s));
void word_free P_((Word *w));
int List_len P_((Word *w));
Word *word_append P_((Word *w1, Word *w2));
int foundin P_((Word *w1, Word *w2));
void addword P_((Word *w, char *s));
void typefixhack P_((Word *w));
int ngetc P_((FILE *f));
int fnextch P_((FILE *f));
int nextch P_((FILE *f));
int getsym P_((char *buf, FILE *f));
int skipit P_((char *buf, FILE *f));
int is_type_word P_((char *s));
Word *typelist P_((Word *p));
Word *getparamlist P_((FILE *f));
void emit P_((Word *wlist, Word *plist, long startline));
void getdecl P_((FILE *f));
void main P_((int argc, char **argv));
void Usage P_((void));
void Version P_((void));

#undef P_
