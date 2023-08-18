xor $0 $0
lw $1 $0 18
lw $1 $0 18
lw $2 $0 19
lw $2 $0 19
xor $3 $3
compi $5 -1
bz $1 9
xor $6 $6
xor $6 $1
and $6 $5
bz $6 2
add $3 $2
shrl $1 1
shll $2 1
b -8
sw $3 $0 20