###
 * List functions to be exported from the design doc.
###

templates = require 'duality/templates'


exports.toc = (head, req) ->
    start({code: 200, headers: {'Content-Type': 'text/html'}})
    rows = while row=getRow()
        row

    content = templates.render('toc.html',req, rows: rows)

    title: ''
    content: content