rpath=${PATH}

echo -e "\n====================================================================\n"
echo "PATH=${PATH}"
echo -e "\n--------------------------------------------------------------------\n"


declare -a apath
i=0

while [[ $rpath == *:* ]]
do
  lpath=${rpath%%:*}
  rpath=${rpath#*:}
  apath[$i]=$lpath
  let i++
done

apath[$i]=$rpath

# echo -e "${apath[@]}\n"

# echo ${apath[@]}/*

for i in ${apath[@]}
do
  echo -e "\n$i\n---------------------------"
  for j in $i/*
  do
    if [ -x "$j" ]
      then
        echo "$j"
    fi
  done
done

echo -e "\n\n====================================================================\n"
