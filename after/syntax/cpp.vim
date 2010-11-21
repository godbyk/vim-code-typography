" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear cppOperator

" Arithmetic operators
"syntax match cppNiceOperator "=" conceal cchar=← " assignment operator
syntax match cppNiceOperator "=" conceal cchar=⟵ " assignment operator
"+ " plus sign
syntax match cppNiceOperator "-" conceal cchar=− " minus sign
syntax match cppNiceOperator " \* " conceal cchar=× " multiplication sign
syntax match cppNiceOperator " / " conceal cchar=÷ " division sign
"% " modulo sign
"++ " increment
"-- " decrement

" Comparison / relational operators
syntax match cppNiceOperator "==" conceal cchar=≡ " equivalence
syntax match cppNiceOperator "!=" conceal cchar=≠ " inequivalence
syntax match cppNiceOperator "<=" conceal cchar=≤ " less than or equal to
syntax match cppNiceOperator ">=" conceal cchar=≥ " greater than or equal to
"syntax match cppNiceOperator "<" conceal cchar=< " less than
"syntax match cppNiceOperator ">" conceal cchar=> " greater than

" Logical operators
syntax match cppNiceOperator "![^=]"me=e-1 conceal cchar=¬ " logical NOT
syntax match cppNiceOperator "&&" conceal cchar=∧ " logical AND
syntax match cppNiceOperator "||" conceal cchar=∨ " logical OR

" Bitwise operators
"~ " bitwise NOT
"& " bitwise AND
"| " bitwise OR
"^ " bitwise XOR
"syntax match cppNiceOperator "<<" conceal cchar=≪ " left shift (or insertion)
"syntax match cppNiceOperator ">>" conceal cchar=≫ " right shift (or extraction)
syntax match cppNiceOperator "<<" conceal cchar=« " left shift (or insertion)
syntax match cppNiceOperator ">>" conceal cchar=» " left shift (or extraction)

" Compound assignment operators
"+= " addition assignment
"-= " subtraction assignment
"*= " multiplication assignment
"/= " division assignment
"%= " modulo assignment
"&= " bitwise AND assignment
"|= " bitwise OR assignment
"^= " bitwise NOT assignment
"<<= " bit-shift left assignment
">>= " bit-shift right assignment

" Member and pointer operators
"a[b] " subscript
"*a " indirection
"&a " reference
syntax match cppNiceOperator "->" conceal cchar=→ " dereference
"a.b
"a->*b
"a.*b

" Other operators
"a() " function
"a, b " comma
"a ? b : c " ternary
syntax match cppNiceOperator "::" conceal cchar=∷ " scope
"sizeof(a) " size of
"typeid(a) " type id of

" Trigraphs
syntax match cppNiceOperator "??=" conceal cchar=# " number sign
syntax match cppNiceOperator "??/" conceal cchar=\ " backslash
syntax match cppNiceOperator "??'" conceal cchar=^ " circumflex
syntax match cppNiceOperator "??(" conceal cchar=[ " left bracket
syntax match cppNiceOperator "??)" conceal cchar=] " right bracket
syntax match cppNiceOperator "??!" conceal cchar=| " vertical bar
syntax match cppNiceOperator "??<" conceal cchar={ " left brace
syntax match cppNiceOperator "??>" conceal cchar=} " right brace
syntax match cppNiceOperator "??-" conceal cchar=~ " tilde

" Alternative tokens
syntax match cppNiceOperator "<%" conceal cchar={ " left brace
syntax match cppNiceOperator "%>" conceal cchar=} " right brace
syntax match cppNiceOperator "<:" conceal cchar=[ " left bracket
syntax match cppNiceOperator ":>" conceal cchar=] " right bracket
syntax match cppNiceOperator "%:" conceal cchar=# " number sign (also covers %:%: → ##)
syntax match cppNiceOperator "and" conceal cchar=∧ " logical AND
syntax match cppNiceOperator "or" conceal cchar=∨ " logical OR
syntax match cppNiceOperator "not" conceal cchar=¬ " logical NOT
syntax match cppNiceOperator "not_eq" conceal cchar=≠ " inequivalence
"and_eq " bitwise AND assignment
"or_eq " bitwise OR assignment
"xor_eq " bitwise XOR assignment
"bitand " bitwise AND
"bitor " bitwise OR
"xor " bitwise XOR
"compl " bitwise NOT

" Miscellaneous
syntax match cppNiceOperator "\.\.\." conceal cchar=… " ellipsis

" Unary functions/methods
syntax match cppNiceOperator "\(std::\|\)sqrt" conceal cchar=√ " square root


hi link cppNiceOperator Operator
hi link cppNiceStatement Statement
hi! link Conceal Operator

set conceallevel=2

