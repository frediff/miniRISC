%{
	#include<stdio.h>
	#include<string.h>

	int instr = 0;
	int reg_offset = 6;
	int imm_offset = 16;
	void print_binary(int);

	const int ADD   = 0b000100; //  add
	const int COMP  = 0b000010; //  comp
	const int ADDI  = 0b100100; //  addi
	const int COMPI = 0b100010; //  compi
	const int DIFF  = 0b001000; //  (DIFF)
	const int AND   = 0b000110; //  (AND)
	const int XOR   = 0b000001; //  (XOR)
	const int SHLL  = 0b100101; //  (SHLL)
	const int SHRL  = 0b100011; //  (SHRL)
	const int SHRA  = 0b100111; //  (SHRA)
	const int SHLLV = 0b000101; //  (SHLLV)
	const int SHRLV = 0b000011; //  (SHRLV)
	const int SHRAV = 0b000111; //  (SHRAV)
	const int LW    = 0b101100; //  lw
	const int SW    = 0b001100; //  sw
	const int B     = 0b110000; //  b
	const int BR    = 0b010000; //  br
	const int BL    = 0b11111110010; //  bl
	const int BLTZ  = 0b110001; //  bltz
	const int BZ    = 0b110110; //  bz
	const int BNZ   = 0b110111; //  bnz
	const int BCY   = 0b110101; //  bcy
	const int BNCY  = 0b110011; //  bncy

	const int ENDOFCODE = 0b00000000000000000000000000110000;

%}

REG 	("$"[0-9])|("$"[1-2][0-9])|("$30"|"$31")
IMM 	("+"|"-")?[0-9]*
WS		[ \t]
NL		"\n"

%x LONGIMM

%%


"add"		{instr |= ADD;}
"comp"		{instr |= COMP;}
"addi"		{instr |= ADDI; BEGIN(LONGIMM);}
"compi"		{instr |= COMPI; BEGIN(LONGIMM);}
"diff"		{instr |= DIFF;}
"and"		{instr |= AND;}
"xor"		{instr |= XOR;}
"shll"		{instr |= SHLL; BEGIN(LONGIMM);}
"shrl"		{instr |= SHRL; BEGIN(LONGIMM);}
"shra"		{instr |= SHRA; BEGIN(LONGIMM);}
"shllv"		{instr |= SHLLV;}
"shrlv"		{instr |= SHRLV;}
"shrav"		{instr |= SHRAV;}
"lw"		{instr |= LW;}
"sw"		{instr |= SW;}
"b"			{instr |= B;}
"br"		{instr |= BR;}
"bl"		{instr |= BL;}
"bltz"		{instr |= BLTZ;}
"bz"		{instr |= BZ;}
"bnz"		{instr |= BNZ;}
"bcy"		{instr |= BCY;}
"bncy"		{instr |= BNCY;}

{WS}		{}
{NL}		{print_binary(instr); printf(",\n"); instr = 0; reg_offset = 6;}
{REG} 		{instr |= (atoi(&yytext[1]) << reg_offset); reg_offset += 5;}
{IMM}		{instr |= (atoi(yytext) << imm_offset);}
.			{printf("ERROR: unknown token \"%s\"!\n", yytext); exit(1);}
<<EOF>> 	{if(instr) print_binary(instr), printf(",\n"); return 0;}

<LONGIMM>{WS}	{}
<LONGIMM>{IMM}	{instr |= (atoi(yytext) << reg_offset); BEGIN(INITIAL);}
<LONGIMM>{REG} 	{instr |= (atoi(&yytext[1]) << reg_offset); reg_offset += 5;}
.<LONGIMM> 		{printf("ERROR: unknown token \"%s\"!\n", yytext); exit(1);}

%%

void print_binary(int s){
	for(int i = 31; i >= 0; --i){
		printf((s & (1 << i) ? "1" : "0"));
	}
}

int main(){
	printf("memory_initialization_radix=2;\nmemory_initialization_vector=\n");
	yylex();
	print_binary(ENDOFCODE);
	printf(";\n");
}

int yywrap(){
	return(1);
}
