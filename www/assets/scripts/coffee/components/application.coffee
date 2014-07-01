CR = require '../cr.coffee'
PageHeader = require 'react-bootstrap/PageHeader'
Application = CR.React.createClass
  mixins: [CR.FluxMixin]
  render: ->
    (CR.d.div {}, [
      (PageHeader {key:2, className:'app'}, "My Title")
      ]
    )

module.exports = Application
