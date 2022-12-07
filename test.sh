#!/bin/bash

# load bash libtools 
. ./libtools.sh

main()
{
   echo "hello $@"
}

# test
checking $@
