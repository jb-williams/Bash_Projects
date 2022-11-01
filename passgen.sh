#!/usr/bin/env bash
#Simple Password Generator 

echo "This is a simple password generator"
echo "Please enter the length of the password: "
read PASSWORD_LENGTH

# makes 5 different random passwords of specified length
for password in $(seq 1 5);
do
	openssl rand -base64 48 | cut -c1-$PASSWORD_LENGTH

done

