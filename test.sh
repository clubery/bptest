#!/bin/bash
REQUEST_URL="http://192.168.99.110:8091"
REQUEST_RESULT=$(curl -s $REQUEST_URL)

if [ "$REQUEST_RESULT" == "<h1>Hello World</h1>" ]; then
    echo "Test success!"
    echo "Request URL: ${REQUEST_URL}"
    
    echo "Content:" $REQUEST_RESULT

else
    echo "Test failed!"
    echo "Output: ${REQUEST_RESULT}"
    exit 1
fi
