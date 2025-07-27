%{
#include <stdio.h>
%}

%%

[a-zA-Z_][a-zA-Z0-9_]*   { printf("Valid identifier\n"); }
[^ \t\n]+                { printf("Not a valid identifier\n"); }
\n                       { return 0; }

%%

int yywrap(void) {
    return 1;
}

int main() {
    printf("Enter string: ");
    yylex();
    return 0;
}
