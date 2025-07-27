%{
#include <stdio.h>

int count = 0;
%}

%%

[A-Z]   { printf("%s is a capital letter\n", yytext); count++; }
.       { printf("%s is not a capital letter\n", yytext); }
\n      { return 0; }

%%

int yywrap(void) {
    return 1;
}

int main() {
    printf("Enter input: ");
    fflush(stdout);
    yylex();
    printf("\nNumber of capital letters in the given input: %d\n", count);
    return 0;
}