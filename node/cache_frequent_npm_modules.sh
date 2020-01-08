#!/bin/bash

# This script prepares the local npm cache or Verdaccio proxy
# for offline development.
# This is achieved by creating a temporal project, installing those
# packages and cleaning the project afterwards.

MODULES=(
  # Testing
  #----------------------------------------------------------------
  "ava"
  "avarc"
  "chai"
  "jest"
  "mocha"
  "sinon"
  "supertest"
  "@testing-library/jest-dom"
  "@testing-library/react"
  "@testing-library/user-event"

  # Node.js
  #----------------------------------------------------------------
  "envvar"
  "winston"
  "cheerio"
  "dotenv"

  # Node.js / Backend
  #----------------------------------------------------------------
  "express"
  "body-parser"
  "apollo-server"
  "passport"
  "morgan"
  "nodemailer"
  "jsonwebtoken"

  # Node.js / CLI
  #----------------------------------------------------------------
  "minimist"
  "yargs"
  "commander"
  "chalk"
  "clear"
  "clui"
  "progress"
  "configstore"

  # Databases
  #----------------------------------------------------------------
  "pg"
  "knex"
  "mongodb"
  "mongoose"
  "redis"

  # React
  #----------------------------------------------------------------
  "react"
  "react-dom"
  "react-dropzone"
  "react-scripts"
  "react-select"
  "react-router"
  "react-router-dom"
  "redux"
  "react-redux"
  "redux-thunk"
  "redux-form"
  "semantic-ui-react"
  "prop-types"
  "react-i18next"
  "i18next-chained-backend"
  "i18next-xhr-backend"
  "i18next-localstorage-backend"

  # Babel
  #----------------------------------------------------------------
  "babel-loader"
  "@babel/core"
  "@babel/cli"
  "@babel/preset-env"
  "@babel/runtime"
  "babel-preset-es2015"

  # Electron
  #----------------------------------------------------------------
  "electron"
  "electron-localshortcut"

  # Typescript
  #----------------------------------------------------------------
  "typescript"
  "ts-node"

  # Common TypeScript definitions
  #----------------------------------------------------------------
  "@types/node"
  "@types/express"
  "@types/body-parser"
  "@types/react"
  "@types/react-dom"
  "@types/react-router"
  "@types/react-router-dom"
  "@types/redux-form"
  "@types/react-redux"
  "@types/lodash"
  "@types/request"
  "@types/request-promise-native"
  "@types/socket.io"
  "@types/socket.io-client"
  "@types/socket.io-redis"
  "@types/mongoose"
  "@types/cheerio"
  "@types/jest"
  "@types/mocha"
  "@types/chai"
  "@types/sinon"
  "@types/supertest"
  "@types/uuid"
  "@types/minimist"
  "@types/clear"
  "@types/clui"
  "@types/configstore"
  "@types/luxon"
  "@types/ms"
  "@types/classnames"
  "@types/superagent"
  "@types/babel-core"

  # Protocols
  #----------------------------------------------------------------
  "axios"
  "request"
  "request-promise-native"
  "superagent"
  "socket.io"
  "socket.io-client"
  "socket.io-redis"
  "graphql"
  "grpc"

  # Utilities
  #----------------------------------------------------------------
  "lodash"
  "decimal.js"
  "luxon"
  "moment"
  "moment-timezone"
  "ms"
  "uuid"
  "classnames"

  # Development tools / project quality
  #----------------------------------------------------------------
  "eslint"
  "eslint-config-standard"
  "helmet"
  "husky"
  "prettier"
  "nyc"
  "webpack"
  "webpack-dev-server"
  "ws"
  "cra-template"
  "cra-template-typescript"
)

mkdir /tmp/cache_nodejs_modules/
cd /tmp/cache_nodejs_modules/
npm init --yes
npm install --save "${MODULES[@]}"
cd --
rm -rf /tmp/cache_nodejs_modules/
