#!/bin/bash
# Passing arguments to a function


print_something () {
    echo I love $1
    return 1
}

print_something RedBull
print_something coffe
