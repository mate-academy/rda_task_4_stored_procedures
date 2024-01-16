#! /bin/bash


match=$(cat log.txt | grep 'AwersomeProduct' || true)
if [ -z "$match" ]; then 
    echo "Unable to find test product name in the output. Please check if stored procedure is returning product name"
    exit 1
else
    echo "Found stored procedure return value"
fi

match=$(cat log.txt | grep '4242' || true)
if [ -z "$match" ]; then 
    echo "Unable to find test product amount in the output. Please check if stored procedure is returning product count on a warehouse"
    exit 1
else
    echo "Found stored procedure return value"
fi