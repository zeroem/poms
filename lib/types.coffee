###
 * Kanso document types to export
###

Type = require('couchtypes/types').Type
fields = require('couchtypes/fields')
widgets = require('couchtypes/widgets')

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

