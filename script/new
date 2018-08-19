#!/bin/sh
# Create a new article

if [ ! -d "./_posts" ]; then
  echo "Path _posts/ doesn't exist. $1"
else
  cd ./_posts
  filename="`date "+%Y-%m-%d-"`$1.md"
  title=`echo "$1" | tr "-" " "`
  date=`date "+ %Y-%m-%d %H:%M:%S"`
  echo -e "---\ntitle: $title\ndate: $date +0800\ncategory:\ntags:\nexcerpt:\n---" > $filename
fi
