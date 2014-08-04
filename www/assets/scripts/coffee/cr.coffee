Jquery = require 'jquery'
Flux = require 'flux'
if jest?
  React = require 'react/addons'
  TestUtils = React.addons.TestUtils
else
  React = require 'react'
  TestUtils = {}
CR = {
  Flux: Flux,
  React: React,
  TestUtils: TestUtils
  Jquery: Jquery,
  d: React.DOM
}
module.exports = CR

