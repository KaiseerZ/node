/**
 * Created by Kaiser on 2017/5/18.
 */
'use strict'
const express = require('express')
const http = require('http')
const app = express()

app.get('/', function (req, res) {
  res.send('this is index')
})

let httpServer = http.createServer(app)

httpServer.listen(80)
