FILES=*.html
for f in $FILES
do
  filename="${f%.*}"
  echo -n "$f"
#file -I $f
  if file -I $f | grep -wq "iso-8859-1"
  then
    mkdir -p converted
    cp $f ./converted
    iconv -f ISO-8859-1 -t UTF-8 $f > "${filename}_utf8.html"
    mv "${filename}_utf8.html" $f
    echo ": CONVERTED TO UTF-8."
  else
    echo ": UTF-8 ALREADY."
  fi
done