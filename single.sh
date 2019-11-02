g++ std.cpp -o std.out
g++ my.cpp -o my.out

f="in.txt"
if (($#>=1))
then f=$1
fi

./std.out < $f > std.txt
./my.out < $f > my.txt
if diff std.txt my.txt &> diff.txt
then
    echo -e "  \033[32m Accepted \033[0m"
else
    echo -e "\033[31m Wrong Answer \033[0m"
fi

rm *.out
