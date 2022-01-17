#!/bin/bash

# This script prepares the local npm cache or Verdaccio proxy
# for offline development.
# This is achieved by creating a temporal project, installing those
# packages and cleaning the project afterwards.

MODULES=(
  # Testing
  #----------------------------------------------------------------
  "jest"
  "sinon"
  "supertest"

  # Node.js
  #----------------------------------------------------------------
  "envvar"
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
  "inquirer"

  # Databases
  #----------------------------------------------------------------
  "pg"
  "knex"
  "mongodb"
  "mongoose"
  "redis"

  # Front
  #----------------------------------------------------------------
  "tailwindcss"
  "postcss"
  "autoprefixer"

  # React
  #----------------------------------------------------------------
  "react"
  "react-dom"
  "react-dropzone"
  "react-scripts"
  "react-select"
  "react-router"
  "react-router-dom"
  "formik"
  "react-hook-form"
  "recharts"

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
)

mkdir /tmp/cache_nodejs_modules/
cd /tmp/cache_nodejs_modules/
npm init --yes
npm install --save "${MODULES[@]}"
cd --
rm -rf /tmp/cache_nodejs_modules/
