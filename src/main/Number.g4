grammar Number;

main: exp;
exp: NUMBER                     # Number
    | '(' exp ')'               # Paran
    | l=exp op='+' r=exp        # Plus
    ;

NUMBER: [1-9][0-9]*;
WHITESPACE: ' ' -> skip;