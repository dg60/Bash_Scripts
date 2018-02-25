#!/usr/bin/env bash

. ./config.sh

echo "The name of the actual user was: $user with the id: $id "
echo "The Home directory of the user: $home"

echo "The log in history of the actual user:"
users=$(who | cut -d' ' -f1 | sort)
last | grep $users
