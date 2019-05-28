
link=$1
name=$(wget -nv $link 2>&1 | cut -d\" -f2)
name=$(echo "$name" | sed 's/ /\\ /g')
name=$(echo "$name" | sed 's/)/\\)/g')
name=$(echo "$name" | sed 's/(/\\(/g')
name=$(echo "$name" | sed 's/\]/\\\]/g')
name=$(echo "$name" | sed 's/\[/\\\[/g')
name=$(echo "$name" | sed 's/\&/\\&/g')
name=$(echo "$name" | sed 's/\|&/\\|/g')
name=$(echo "$name" | sed "s/\'/\\'/g")
eval "dir2ogg $name"
eval "rm $name"
