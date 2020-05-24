#!/bin/bash
echo "Installing Tiedot DB...please wait..."
HOME=/data/data/com.termux/files/home/go/src/github.com/edwindvinas

cd $HOME

echo "Creating NoSQL DB folder..."
mkdir $HOME/data-nosql && cd data-nosql
#export GOPATH=`pwd`  # backticks surround pwd

echo "Installing tiedot via go get..."
echo "go get github.com/HouzuoGuo/tiedot"
go get github.com/HouzuoGuo/tiedot
#./bin/tiedot -mode=httpd -dir=/tmp/MyDatabase -port=8080

