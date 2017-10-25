find . -type f | grep \.ogg | cut -f3-4  -d '/' | sort -u | sed -e 's:/:    :g' | awk -f ass2-part1.awk
