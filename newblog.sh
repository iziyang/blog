#!/bin/bash
file_name=./source/_drafts/$1.md

echo "---" >> $file_name
echo "title:" >> $file_name
time=$(date "+%Y-%m-%d %H:%M:%S")
echo "tags: " >> $file_name
echo "categories: 杂谈" >> $file_name
echo "date: $time" >> $file_name
echo "description:" >> $file_name
echo "---" >> $file_name
