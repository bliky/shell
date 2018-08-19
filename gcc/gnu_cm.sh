# banner
echo -e "\n====================================\n"
echo -e "\n* GNU编译器与make *\n"
echo -e "\n====================================\n"

# gcc
echo -e "\n-- 1) gcc:\n"
gcc --version
echo -e "\n------------------------------------\n"

# g++
echo -e "\n-- 2) g++:\n"
g++ --version
echo -e "\n------------------------------------\n"

# 汇编器as
echo -e "\n-- 3) 汇编器as:\n"
as --version
echo -e "\n------------------------------------\n"

# 连接器ld
echo -e "\n-- 4) 连接器ld:\n"
ld --version
echo -e "\n------------------------------------\n"

# make
echo -e "\n-- 5) make:\n"
make --version
echo -e "\n------------------------------------\n"

# cmake
echo -e "\n-- 6) cmake:\n"
cmake --version
echo -e "\n------------------------------------\n"
