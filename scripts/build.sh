# transformacja js
babel --presets react,es2015 js/source/ -d js/build
# pakowanie js
browserify js/build/app.js -o bundle.js
# pakowanie css
cat css/*/* css/*.css | sed 's/..\/..\/images/images/g' > bundle.css
# gotowe
date; echo;

