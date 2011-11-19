echo "Compiling Coffeescript to JS"
coffee -b -c -o . src/github/api.coffee
mv api.js github_api.js
echo "Done"
