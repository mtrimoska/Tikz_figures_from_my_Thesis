echo "\path"
x=0
for i in `seq 0 63`; do echo "($x,0) node (l6n${i}) {}";x=$(echo "$x+0.25" | bc); done
echo ""

x=0.125
for i in `seq 0 31`; do echo "($x,1) node (l5n${i}) {}";x=$(echo "$x+0.5" | bc); done
echo ""

x=0.375
for i in `seq 0 15`; do echo "($x,2) node (l4n${i}) {}";x=$(echo "$x+1" | bc); done
echo ""

x=0.875
for i in `seq 0 7`; do echo "($x,3) node (l3n${i}) {}";x=$(echo "$x+2" | bc); done
echo ""

x=1.875
for i in `seq 0 3`; do echo "($x,4) node (l2n${i}) {}";x=$(echo "$x+4" | bc); done
echo ""

x=3.875
for i in `seq 0 1`; do echo "($x,5) node (l1n${i}) {}";x=$(echo "$x+8" | bc); done
echo ""

x=7.875
for i in `seq 0 0`; do echo "($x,6) node (l0n${i}) {}";x=$(echo "$x+16" | bc); done
echo ";"

echo "\draw"
j=0
for i in `seq 0 31`; do echo "(l5n${i}) -- (l6n${j})"; j=$(($j+1)); echo "(l5n${i}) -- (l6n${j})";j=$(($j+1)); done
echo ""

j=0
for i in `seq 0 15`; do echo "(l4n${i}) -- (l5n${j})"; j=$(($j+1)); echo "(l4n${i}) -- (l5n${j})";j=$(($j+1)); done
echo ""

j=0
for i in `seq 0 7`; do echo "(l3n${i}) -- (l4n${j})"; j=$(($j+1)); echo "(l3n${i}) -- (l4n${j})";j=$(($j+1)); done
echo ""

j=0
for i in `seq 0 3`; do echo "(l2n${i}) -- (l3n${j})"; j=$(($j+1)); echo "(l2n${i}) -- (l3n${j})";j=$(($j+1)); done
echo ""

j=0
for i in `seq 0 1`; do echo "(l1n${i}) -- (l2n${j})"; j=$(($j+1)); echo "(l1n${i}) -- (l2n${j})";j=$(($j+1)); done
echo ""

j=0
for i in `seq 0 0`; do echo "(l0n${i}) -- (l1n${j})"; j=$(($j+1)); echo "(l0n${i}) -- (l1n${j})";j=$(($j+1)); done
echo ";"
