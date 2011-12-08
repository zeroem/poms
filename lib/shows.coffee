###
 * Show functions to be exported from the design doc.
###

templates = require 'duality/templates'

exports.welcome = (doc, req) ->
    title: 'It worked!'
    content: templates.render('welcome.html', req, {})

exports.not_found = (doc, req) ->
    title: '404 - Not Found'
    content: templates.render('404.html', req, {})

exports.pattern = (doc,req) ->

    doc.display = for row in [0...doc.rows]
        for column in [0...doc.columns]
            0

    for square in doc.squares
        doc.display[square.row-1][square.column-1] = square.value;

    title: doc.name
    content: templates.render('pattern.html', req, {"pattern": doc})