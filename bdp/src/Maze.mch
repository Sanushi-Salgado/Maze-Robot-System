/* Maze
 * Author: Sanushi Salgado
 * Creation date: 12/18/2019
 */

MACHINE Maze

CONCRETE_CONSTANTS
    maze_width ,
    maze_height ,
    x_coordinates ,
    y_coordinates ,
    maze ,
    internal_wall_squares ,
    path_squares ,
    exit_square

PROPERTIES

    maze_width : NAT1 &  maze_width = 7 &
    maze_height : NAT1 & maze_height = 5 &

    x_coordinates = ( 1 .. maze_width ) & x_coordinates <: NAT1 &
    y_coordinates = ( 1 .. maze_height ) & y_coordinates <: NAT1 &

    maze : x_coordinates <-> y_coordinates &
    maze = ( x_coordinates * y_coordinates ) &

    internal_wall_squares : x_coordinates <-> y_coordinates & internal_wall_squares <: maze &
    internal_wall_squares = { ( 1 |-> 3 ) , ( 2 |-> 1 ) , ( 2 |-> 3 ) , ( 2 |-> 5 ) , ( 3 |-> 3 ) , ( 4 |-> 2 ) , ( 4 |-> 3 ) , ( 4 |-> 4 ) , ( 6 |-> 1 ) , ( 6 |-> 2 ) , ( 6 |-> 4 ) , ( 7 |-> 4 ) } &

    path_squares : x_coordinates <-> y_coordinates & path_squares <: maze &
    path_squares = maze - internal_wall_squares &

    path_squares /= internal_wall_squares &

    exit_square : maze &  exit_square : path_squares &
    exit_square = ( 1 |-> 5 )

OPERATIONS

    // Get the total number of squares in the maze
    number_of_squares <-- getTotalNumberOfSquares =
    BEGIN
        number_of_squares := card ( maze )
    END ;


    // Get the total number of internal walls in the maze
    number_of_walls <-- getTotalNumberOfInternalWalls =
    BEGIN
        number_of_walls := card ( internal_wall_squares )
    END ;


    // Get the total number of Path squares in the maze
    number_of_path_squares <-- getTotalNumberOfPathSquares =
    BEGIN
        number_of_path_squares := card ( path_squares )
    END


END
