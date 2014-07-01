React = require 'react'
Jquery = require 'jquery'
Fluxxor = require 'fluxxor'
CR = {
  Fluxxor: Fluxxor,
  React: React,
  FluxMixin: Fluxxor.FluxMixin(React),
  FluxChildMixin: Fluxxor.FluxChildMixin(React),
  StoreWatchMixin: Fluxxor.StoreWatchMixin,
  Jquery: Jquery,
  d: React.DOM
}
module.exports = CR

