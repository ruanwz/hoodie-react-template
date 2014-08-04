CR = require '../cr.coffee'
PageHeader = require 'react-bootstrap/PageHeader'
Application = CR.React.createClass
  render: ->
    (CR.d.div {}, [
      (PageHeader {key:2, className:'app'}, "My Title")
      ]
    )

module.exports = Application
