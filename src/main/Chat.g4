grammar Chat;

/*
* Parser rules
*/

chat: line+ ;
line: name command message NEWLINE ;
message: (emoticon | link | color | mention | WORD | WHITESPACE)+ ;
name: WORD WHITESPACE ;
command: (SAYS | SHOUT) WHITESPACE ;
emoticon: ':' '-'? '('
    | ':' '-'? ')'
    ;
link: '[' (WORD | WHITESPACE)* ']' '(' (WORD | WHITESPACE)* ')' ;
//link: TEXT TEXT ;
color: '/' WORD '/' message '/' ;
mention: '@' WORD ;

/*
* Lexer rules
*/
fragment A: ('A' | 'a') ;
fragment H: ('H' | 'h') ;
fragment O: ('O' | 'o') ;
fragment S: ('S' | 's') ;
fragment T: ('T' | 't') ;
fragment U: ('U' | 'u') ;
fragment Y: ('Y' | 'y') ;

fragment LOWERCASE: [a-z] ;
fragment UPPERCASE: [A-Z] ;

SAYS : S A Y S ;
SHOUT: S H O U T ;
WORD: (LOWERCASE | UPPERCASE | '_')+ ;
WHITESPACE: ' ' | '\t' ;
NEWLINE: ('\r'? '\n' | '\r')+ ;
// TEXT: ~[\])]+ ;
//TEXT: ('['|'(') ~[\])]+ (']'|')');
