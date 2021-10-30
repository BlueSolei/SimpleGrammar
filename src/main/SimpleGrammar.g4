grammar SimpleGrammar;

main: 'Hello ' name '!';
name: ANY;
WS: [ \t]+ -> skip;
ANY: [a-zA-Z]+;