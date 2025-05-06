list=$(ls -l1 | grep "^[0-9]" |xargs)

for i in $list; do 
  x=$(echo $i | awk -F - '{print $2}')
  name=$(echo ${x} | sed -e 's/.md//')
  echo "
      {
        "title": "ls command",
        "text": "01-ls.md"
      }
"
done
