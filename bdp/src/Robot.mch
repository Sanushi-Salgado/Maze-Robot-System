/* Robot
* Author: Sanushi Salgado
* Creation date: 12/18/2019
*/

MACHINE Robot















                                                // Checks if a given square exists in the maze

SEES
    Maze

SETS
    DIRECTION = { North , South , East , West } ; // All possible directions the robot can move in the maze
    OUTPUT = { MOVED_SUCCESSFULLY , FAILED_DUE_TO_THE_MAZE_BOUNDARY , FAILED_DUE_TO_AN_INTERNAL_WALL , INVALID_FIRST_ATTEMPT , YES , NO } // Possible output messages

ABSTRACT_VARIABLES
    x_position , // Robot's position along the x-axis
    y_position , // Robot's position along the y-axis
    moving_direction , // The direction the robot is currently moving
    route // Robot's route from the entry square to the exit square

INVARIANT
    x_position : NAT1 & x_position : x_coordinates &
    y_position : NAT1 & y_position : y_coordinates &
    moving_direction : DIRECTION &
    route : seq ( path_squares )

INITIALISATION
    x_position , y_position , moving_direction , route := 1 , 1 , North , <>

OPERATIONS

    // Move the robot one square to the North
    output <-- moveNorth =
    BEGIN
        // Check if the square exists
        IF ( ( x_position |-> succ ( y_position ) : maze )  )
        THEN
            // Check if the square is a path square & not an internal wall
            IF (  ( x_position |-> succ ( y_position ) : path_squares ) )
            THEN
                moving_direction , y_position , route , output := North , succ ( y_position ) , route <- ( x_position |-> y_position ) , MOVED_SUCCESSFULLY
            ELSE
                output := FAILED_DUE_TO_AN_INTERNAL_WALL
            END
        ELSE
            output := FAILED_DUE_TO_THE_MAZE_BOUNDARY
        END
    END ;



    // Move the robot one square to the South 
    output <-- moveSouth =
    BEGIN
        // Check if the square exists
        IF ( ( x_position |-> pred ( y_position ) : maze )  )
        THEN
            // Check if the square is a path square & not an internal wall
            IF (  ( x_position |-> pred ( y_position ) : path_squares ) )
            THEN
                moving_direction , y_position , route , output := South , pred ( y_position ) , route <- ( x_position |-> y_position ) , MOVED_SUCCESSFULLY
            ELSE
                output := FAILED_DUE_TO_AN_INTERNAL_WALL
            END
        ELSE
            output := FAILED_DUE_TO_THE_MAZE_BOUNDARY
        END
    END ;



    // Move the robot one square to the East
    output <-- moveEast =
    BEGIN
        // Check if the square exists
        IF ( ( succ ( x_position ) |-> y_position : maze ) )
        THEN
            // Check if the square is a path square & not an internal wall
            IF (  ( succ ( x_position ) |-> y_position : path_squares ) )
            THEN
                moving_direction , x_position , route , output := East , succ ( x_position ) , route <- ( x_position |-> y_position ) , MOVED_SUCCESSFULLY
            ELSE
                output := FAILED_DUE_TO_AN_INTERNAL_WALL
            END
        ELSE
            output := FAILED_DUE_TO_THE_MAZE_BOUNDARY
        END
    END ;



    // Move the robot one square to the West
    output <-- moveWest =
    BEGIN
        // Check if the square exists
        IF ( ( pred ( x_position ) |-> y_position : maze ) )
        THEN
            // Check if the square is a path square & not an internal wall
            IF ( ( pred ( x_position ) |-> y_position : path_squares ) )
            THEN
                moving_direction , x_position , route , output := West , pred ( x_position ) , route <- ( x_position |-> y_position ) , MOVED_SUCCESSFULLY
            ELSE
                output := FAILED_DUE_TO_AN_INTERNAL_WALL
            END
        ELSE
            output := FAILED_DUE_TO_THE_MAZE_BOUNDARY
        END
    END ;



    // The robot can teleport to one of the maze's "path" squares.
    output <-- teleport ( xx , yy ) =
    // The square that the robot should teleport to, should not be the same as the current position of the robot & that square should belong to the maze
    PRE xx : NAT1 & yy : NAT1 & xx : x_coordinates & yy : y_coordinates & ( xx |-> yy ) : maze & ( ( xx |-> yy ) /= ( x_position |-> y_position ) )
    THEN
        IF ( ( xx |-> yy : internal_wall_squares ) ) // Check if the square the robot is trying to teleport to, is an internal wall 
        THEN
            output := FAILED_DUE_TO_AN_INTERNAL_WALL
        ELSIF ( size ( route ) = 0 & ( xx |-> yy : path_squares ) ) // It is not acceptable to immediately teleport the robot, to the exit square
        THEN
            output := INVALID_FIRST_ATTEMPT
        ELSIF ( size ( route ) /= 0 & ( xx |-> yy : path_squares ) )
        THEN
            x_position , y_position , route , output := xx , yy , route <- ( x_position |-> y_position ) , MOVED_SUCCESSFULLY
        END
    END ;



    // Get the current position of the robot in the maze
    current_position <-- getPosition =
    BEGIN
        current_position :=  ( x_position |-> y_position )
    END ;



    // Outputs yes if the robot is currently in the exit square of the maze, no otherwise.
    output <-- foundExit =
    BEGIN
        // Check if the robot is currently in the exit square
        IF ( ( x_position |-> y_position = exit_square ) )
        THEN
            output := YES
        ELSE
            output := NO
        END
    END ;



    // Inputs a square and reports yes if the current square has been visited by the robot, no otherwise.
    output <-- visitedSquare ( xx , yy ) =
    // The robot can visit only path squares of the maze and cannot visit any internal walls
    PRE xx : NAT1 & xx : x_coordinates & yy : NAT1 & yy : y_coordinates & ( xx |-> yy ) : maze & ( xx |-> yy ) : path_squares &
        ( xx |-> yy ) /: internal_wall_squares
    THEN
        // Check if the robot has visited the given path square
        IF ( ( xx |-> yy ) : ran ( route ) )
        THEN
            output := YES
        ELSE
            output := NO
        END
    END ;



    // Outputs the sequence of squares the Robot has visited, in the order visited, i.e. its route through the maze.
    robots_route <-- robotsRoute =
    BEGIN
        robots_route := route
    END ;



    // Reset the robot to its original position, i.e. the entrance square
    resetRobot =
    BEGIN
        x_position , y_position , route , moving_direction := 1 , 1 , <> , North
    END ;



    // Outputs the length of the robot's route, i.e. the total number of squares visited
    route_length <-- getRouteLength =
    BEGIN
        route_length := size ( route )
    END ;



    // Get the first n (number of) squares the robot visited
    first_n_squares <-- getFirstNSquaresTheRobotVisited ( num ) =
    PRE
        num : NAT1 & num <= size ( route )
    THEN
        first_n_squares := route /|\ num
    END



    // Get the reverse route of the robot
    /*reverse_route <-- getReverseRoute = 
    BEGIN
    reverse_route := rev(route)
    END*/


END
