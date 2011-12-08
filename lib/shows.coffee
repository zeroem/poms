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
    squares = doc.squares;
    doc.squares = for row in [1...doc.rows]
        for column in [1...doc.columns]
            0

    for square in squares
        doc.squares[square.row][square.column] = square.value;

    title: doc.name
    content: templates.render('pattern.html', req, {"pattern": doc})