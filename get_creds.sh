username="$1"
read -p "Enter Password: " -s password
echo 
read -p "Re-Enter Password: " -s rePassword
echo 
if ["$password" == "$rePassword"]
then
    mkdir auth
    docker run --entrypoint htpasswd registry:2 -Bbn "$username" "$password" > auth/htpasswd
    echo "Password for user $username successfully set"
else
    echo "Passwords do not match\n"
fi
