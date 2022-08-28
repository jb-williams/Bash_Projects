#!/usr/bin/env bash
# Do not use or modify this for any malicious purpose
echo "This is a simple file encrypter/decrypter"
echo "Please choose what you want to do"

option="Encrypt Decrypt"

select choice in $option; do
        if [ $REPLY = 1 ];
then
        echo "Please enter the filename you want to encrypt"
        read file;
        gpg -c $file
        echo "The file has been encrypted"
else
        echo  "Please enter the filename you want to decrypt"
        read file2;
        gpg -d $file2
        echo "The file has been decrypted"
fi

done
