#!/bin/bash
sed -e 's/[[:blank:]]/\n/g' plays.$1 | sort -n > sort.$1
