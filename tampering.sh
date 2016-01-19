#!/bin/bash

REQUEST_TYPES=(OPTIONS GET HEAD POST PUT DELETE TRACE CONNECT PROPFIND PROPPATCH MKCOL COPY MOVE LOCK UNLOCK)

HOST=$1
PATH=$2
PORT=$3

if [ ! -z $HOST ] && [ ! -z $PATH ] && [ ! -x $PORT ]; then
        for TYPE in ${REQUEST_TYPES[@]}; do
                echo -e "$TYPE $PATH HTTP/1.1\nHost: $HOST\nConnection: keep-alive\nCache-Control: max-age=0\nAccept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8\nUpgrade-Insecure-Requests: 1\nUser-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36\nAccept-Encoding: gzip, deflate, sdch\nAccept-Language: en-US,en;q=0.8,nl;q=0.6\n" > "$TYPE.http.txt"
                echo "nc $HOST $PORT < $TYPE.http.txt"
        done
else
        echo "Usage: ./tampering.sh HOST PATH PORT"
fi
