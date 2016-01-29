/***************************************************** 
 * flex in class exercise
 *
 * Use 
 * 
 *   $ make
 *   $ ./scanner <Test
 *
 * for testing

<BOF>
%{
C/C++ includes, decls and defs
%}

flex declarations

%%

RE rules for tokenization 

%% 

C/C++ functions

<EOF>
 *
 ******************************************************/

%{
#include <stdio.h>
#include <string.h>
%}

D		[0-9]

%%

[A-Z]            { printf( "A lone capital %s %u\n", yytext, strlen(yytext) ); }

[1-9][0-9]*             { /* Integers without superfluous leading zeros */ }


(\_[A-Za-z])+(\_[A-Za-z0-9])*          { /* C identifier */ }


([1-9][0-9]+|0)\.[0-9]*      {printf("Found float %s\n", yytext); }


%%

main()
{
	/* token handling code here */
	yylex();
	return 0;
}

