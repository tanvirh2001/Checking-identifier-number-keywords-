%option noyywrap

%{
#include <stdio.h>
// Roll Number: 1703xxx
%}

digit   [0-9]
delim   [ \t]

%%

{digit}+       { printf("%s -> NUMBER\n", yytext); }
"+"            { printf("%s -> ADD\n", yytext); }
{delim}+       { /* ignore whitespace */ }
\n             { return 0; }

.              { printf("%s -> UNKNOWN\n", yytext); }  // catch-all

%%

int main()
{
  printf("Enter input: ");
  fflush(stdout);  // Ensure prompt appears before input
  yylex();
  return 0;
}