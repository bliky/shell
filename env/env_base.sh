# banner
echo -e "\n====================================\n"
echo -e "\n* 系统基础环境信息 *\n"
echo -e "\n====================================\n"

# profile
echo -e "\n-- 1) profile:\n"
cat /etc/profile
echo -e "\n------------------------------------\n"

# 查看用户新增环境变量
echo -e "\n-- 2) profile.d:\n"
ls -l /etc/profile.d
echo -e "\n------------------------------------\n"

# 查看用户组
echo -e "\n-- 3) 用户组:\n"
cat /etc/group
echo -e "\n------------------------------------\n"

# 查看用户
echo -e "\n-- 4) 用户:\n"
cat /etc/passwd
echo -e "\n------------------------------------\n"

# 查看shadow
echo -e "\n-- 5) shadow:\n"
cat /etc/shadow
echo -e "\n------------------------------------\n"

# 查看系统环境变量
echo -e "\n-- 6) PATH:\n"
echo ${PATH}
echo -e "\n------------------------------------\n"
