###
 * Kanso document types to export
###

Type = require('couchtypes/types').Type
fields = require 'couchtypes/fields'
widgets = require 'couchtypes/widgets'
permissions = require 'couchtypes/permissions'
validators = require 'couchtypes/validators'


exports.blogpost = new Type "blogpost",
    fields:
        created: fields.createdTime(),
        title:   fields.string(),
        text:    fields.string(
            widget: widgets.textarea(
                cols: 40
                rows: 10
            )
        )

exports.square = new Type "square",
    permissions:
        add:    permissions.hasRole '_admin'
        update: permissions.hasRole '_admin'
        remove: permissions.hasRole '_admin'

    fields:
        row: fields.number
            validators: [ validators.min 1 ]
        column: fields.number
            validators: [ validators.min 1 ]
        value: fields.string()

exports.pattern = new Type "pattern",
    fields:
        rows: fields.number
            validators: [ validators.min 1 ]

        columns: fields.number
            validators: [ validators.min 1 ]

        squares: fields.embedList
            type: exports.square
