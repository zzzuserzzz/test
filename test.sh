#!/bin/bash
string="test"
string2="testchild"

zkCli.sh create /First $string &> /tmp/1

if [[ `tail -n 1 /tmp/1 | grep Created | wc -l` > 0 ]]
then
   echo "Creating is success"
else
   echo "Creating  is failed"
fi

zkCli.sh create /First/Child1 $string2 &> /tmp/1
zkCli.sh stat /First &> /tmp/1
if [[ `tail -n 1 /tmp/1 | grep numChildren| cut -d ' ' -f 3` > 0 ]]
then
   echo "Creating child is success"
else
   echo "Creating child is failed"
fi

zkCli.sh rmr /First &> /tmp/1 && zkCli.sh get /First &> /tmp/1
if [[ `tail -n 1 /tmp/1 | grep 'not exist' | wc -l` > 0 ]]
then
   echo "Deleting  is success"
else
   echo "Deleting is failed"
fi

rm /tmp/1