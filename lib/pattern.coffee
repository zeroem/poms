
module.exports = new class
    _maybe: "m"
    _bomb: "b"
    _safe: "s"

    squaresToBoard: (rows, columns, squares) ->
        board = for row in [0...rows]
            for column in [0...columns]
                ""

        for square in squares
            board[square.row-1][square.column-1] = square.value;

        board

    makeSquare: (row,column,value) ->
        row: row
        column: column
        value: value

    maybeSquare: (row,column) ->
        makeSquare row, column, this._maybe

    bombSquare: (row,column) ->
        makeSquare row, column, this._bomb

    safeSquare: (row,column) ->
        makeSquare row, column, this._safe
