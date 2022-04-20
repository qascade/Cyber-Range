
#! /bin/bash
gcc $1 -o level3 -w -m32 -fno-stack-protector -z execstack -no-pie
