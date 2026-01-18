
#!/usr/bin/bash
pass="@aie_aie10"
read -p $'\e[5;32mWhat is your name?\e[0m' name
echo "Welcome $name"
read -s -p $'\e[5;33mEnter your password::\e[0m' userpass
if [[ $pass == $userpass ]];then
echo -e "\n\e[1;32m[+]Access Granted.\e[0m"
else
echo -e "\n\e[1;31m[!]Your password is wrong.\e[0m"
fi