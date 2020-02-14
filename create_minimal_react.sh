#!/bin/bash

# To execute this script without downloading it, run:
# curl -s "https://raw.githubusercontent.com/nqminhuit/minimal-react/master/create_minimal_react.sh" | bash

npm init -y
npm i react react-dom
npm i webpack webpack-cli webpack-dev-server @babel/core @babel/preset-react babel-loader --save-dev
wget https://raw.githubusercontent.com/nqminhuit/minimal-react/master/webpack.config.js
mkdir -p src/app
(cd src/ && wget https://raw.githubusercontent.com/nqminhuit/minimal-react/master/src/index.html)
(cd src/app/ && touch index.js && echo "console.log('app works!');" > index.js)
echo "*** Please append these lines to package.json in \"scripts\" properties:"
echo "================================================================================================================"
echo "\"start\": \"npm run build\"",
echo "\"build\": \"webpack -d; cp src/index.html dist/index.html; webpack-dev-server --content-base src/ --inline --hot\"",
echo "\"build:prod\": \"webpack -p; cp src/index.html dist/index.html\""
echo "================================================================================================================"
echo "*** After that, to start react app, execute \"$ npm start\""
