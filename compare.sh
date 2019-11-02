g++ std.cpp -o std.out
g++ my.cpp -o my.out
g++ in.cpp -o in.out

nLoop=100
nWA=10
if [ $# -ge 1 ]
then nLoop=$1
fi
if [ $# -ge 2 ]
then nWA=$2
fi

rm -f ./wa/*
iWA=0
lAC=${#nLoop}
lWA=${#nWA}

for i in $(seq -w 1 $nLoop)
do
    ./in.out > in.txt
    ./std.out < in.txt > std.txt
    ./my.out < in.txt > my.txt
    echo -n " # $i : "
    if diff std.txt my.txt &> diff.txt
    then
        echo -e "  \033[32m Accepted \033[0m"
    else
        let "iWA++"
        dWA=$(printf "%0${lWA}d" $iWA)
        echo -e "\033[31m Wrong Answer \033[0m"
        cp in.txt ./wa/${dWA}in.txt
        cp diff.txt ./wa/${dWA}diff.txt
        cp std.txt ./wa/${dWA}std.txt
        cp my.txt ./wa/${dWA}my.txt
        if (($iWA >= $nWA))
        then break
        fi
    fi
done

echo -e "Total AC: \033[32m$(printf "%${lAC}d" `expr $i - $iWA`) \033[0m"
echo -e "Total WA: \033[31m$(printf "%${lAC}d" $iWA) \033[0m"

rm -f *.txt *.out
