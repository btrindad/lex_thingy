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
count = 0;
%}

D		[0-9]

%%

[A-Z]            { printf( "A lone capital %s %u\n", yytext, strlen(yytext) ); }

[1-9][0-9]*             { /* Integers without superfluous leading zeros */ }


(\_[A-Za-z])+(\_[A-Za-z0-9])*          { /* C identifier */ }


([1-9][0-9]+|0)\.[0-9]*      	{printf("Found float %s\n", yytext); }

[^[:print:]] 			{ count++;  }

\[\“\”\”\]			{ printf("Found character sequence [\"\"\"]\n"); }

x{12345}			{ printf("Found the ton of x's\n"); }

%%

main()
{
	/* token handling code here */
	yylex();
	printf( "Found %d unprintable characters", count);
	return 0;
}

