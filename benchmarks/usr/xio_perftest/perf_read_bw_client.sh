#!/bin/bash

export LD_LIBRARY_PATH=../../../src/usr/

# Arguments Check
if [ $# -lt 1 ]; then
        echo "[$0] Missing Parameters!"
        echo "Usage: $0 [Server IP] [Transport (optional)]"
        exit 1
fi

server_ip=$1
trans="rdma"
if [ $# -eq 2 ]; then
	trans=$2
fi

./xio_read_bw -c 8 -n 8 -r ${trans} ${server_ip}

