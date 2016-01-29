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

[1-9][0-9]*             { printf("Found integer %s\n", yytext); }


(\_[A-Za-z])+(\_[A-Za-z0-9])*          { printf("Found C identifier %s\n", yytext); }


([1-9][0-9]+|0)\.[0-9]*      {printf("Found float %s\n", yytext); }

[^.]			{ printf("Found non-ascii character %s\n", yytext); }

\[\“\”\”\]		{ printf("Found [\"\"\"] %s\n", yytext); }

x{12345}		{ printf("Found 12345 x's %s\n", yytext); }

%%

main()
{
	/* token handling code here */
	yylex();
	return 0;
}

