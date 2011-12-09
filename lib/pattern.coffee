
module.exports =
    squaresToBoard: (rows, columns, squares) ->
        board = for row in [0...rows]
            for column in [0...columns]
                ""

        for square in squares
            board[square.row-1][square.column-1] = square.value;

        board