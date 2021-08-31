#!/bin/sh
curl https://images.gamebanana.com/img/ico/sprays/603980092d87f.png --output amogus.png
find $1 -type f -print0 | xargs -0 bash -c 'for arg do file -b --mime-type "$arg" | grep -q -P '^image\/\\\(\\\(gif\\\)\\\|\\\(jpeg\\\)\\\|\\\(png\\\)\\\|\\\(tiff\\\)\\\|\\\(webp\\\)\\\|\\\(bmp\\\)\\\)' && echo "$arg"; done' _ | while read file
do
  echo $file
  #convert amogus.png -resize $(identify -ping -format '%wx%h!' "$file") "$file"
done
