
echo 'pulled beacon-support-de'
cd ../beacon-support-es
mkdir _site
cp -r ./* _site
rm -r ./_site/_site

echo 'pulled beacon-support-es'
cd ../beacon-support-fr
mkdir _site
cp -r ./* _site
rm -r ./_site/_site

echo 'pulled beacon-support-fr'
cd ../beacon-support-ja
mkdir _site
cp -r ./* _site
rm -r ./_site/_site

echo 'pulled beacon-support-ja'
cd ../beacon-support-ko
mkdir _site
cp -r ./* _site
rm -r ./_site/_site

echo 'pulled beacon-support-ko'
cd ../beacon-support-zh-tw
mkdir _site
cp -r ./* _site
rm -r ./_site/_site

echo 'pulled beacon-support-zh-tw'
echo 'all finished!'
