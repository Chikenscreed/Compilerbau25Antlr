grammar language;

// start symbol
expr: 
     // unaryExpr

     // dashExpr

     // mulDivExpr

     // sumExpr
     expr SUMOP expr #exprSumOp |
     NUMBER #exprNumber |

     // shifExpr

     // bitAndOrExpr

     // andOrExpr

     // cmpExpr

     // questionMarkExpr
     expr QM expr DC expr #exprQm
;

// tokens
NUMBER: [0-9]+;
IDENT: [a-z]+;

// parantheseExpr tokens
LPAREN: '(';
RPAREN: ')';

// unaryExpr tokens

// dashExpr tokens

// mulDivExpr tokens

// sumExpr tokens
SUMOP: '+' | '-';

// shiftExpr tokens

// bitAndOrExpr tokens

// andOrExpr tokens

// cmpExpr tokens

// questionMarkExpr tokens
DC: ':';
QM: '?';

// skip whitespaces
WS: [ \t\r\n]+ -> skip;
