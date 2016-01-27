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

7259             { /* Integers without superfluous leading zeros */ }


24261            { /* C identifier */ }


25370            { /* C (C++, Java?) floating point specification */ }


%%

main()
{
	/* token handling code here */
	yylex();
	return 0;
}

