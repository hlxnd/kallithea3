#!/bin/bash
pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd`
popd > /dev/null
docker run --restart=always --name kallithea3 -p 0.0.0.0:5000:5000 -d -v $SCRIPTPATH/kallithea:/home/kallithea ubuntu/kallithea:0.3
