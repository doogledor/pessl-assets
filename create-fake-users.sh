#!/bin/bash

rm users/users.json
echo "[" >> users/users.json
for i in {1..100}; do
    content=$(curl -H "Content-Type: application/json" -s "http://faker.hook.io?property=helpers.userCard&local=de,us,fr")
    if [ $i -gt 1 ]
    then
      echo , >>  users/users.json
    fi
    echo $content
    echo "$content" >>  users/users.json
done
echo "]" >> users/users.json