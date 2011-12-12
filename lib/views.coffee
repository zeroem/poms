###
 * Views to be exported from the design doc.
###


exports.mine_count =
    map:
        (doc) ->
            if doc.squares?
                count = 0
                count++ for square in doc.squares when square.value is "b"

                emit(doc.name,count)


exports.pattern_toc =
    map:
        (doc) ->
            emit doc.name, {} if doc.type == "pattern" or doc.squares?
