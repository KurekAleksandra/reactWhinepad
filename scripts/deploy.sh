# usuwanie ostatniej wersji
rm -rf __deployme
mkdir __deployme

# budowanie
sh scripts/build.sh

# minifikacja js
uglify -s bundle.js -o __deployme/bundle.js
# minifikacja css
cssshrink bundle.css > __deployme/bundle.css
# kopiowanie html i obrazów
cp index.html __deployme/index.html
cp -r images/ __deployme/images/

# gotowe
date; echo;

