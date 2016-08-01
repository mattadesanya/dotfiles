▶ clear
#!/bin/bash
NAME="TOSIN"
echo "Your name is "$NAME
function printsomething {
        local NAME="Bukola"
        echo $NAME
}
echo $NAME
printsomething
echo $NAME

counter=20
until [ $counter -lt 10 ]; do
echo counter $counter
let counter-=1
done
