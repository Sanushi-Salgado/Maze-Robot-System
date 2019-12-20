Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Robot))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Robot))==(Machine(Robot));
  Level(Machine(Robot))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Robot)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Robot))==(Maze)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Robot))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Robot))==(?);
  List_Includes(Machine(Robot))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Robot))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Robot))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Robot))==(?);
  Context_List_Variables(Machine(Robot))==(?);
  Abstract_List_Variables(Machine(Robot))==(?);
  Local_List_Variables(Machine(Robot))==(route,moving_direction,y_position,x_position);
  List_Variables(Machine(Robot))==(route,moving_direction,y_position,x_position);
  External_List_Variables(Machine(Robot))==(route,moving_direction,y_position,x_position)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Robot))==(?);
  Abstract_List_VisibleVariables(Machine(Robot))==(?);
  External_List_VisibleVariables(Machine(Robot))==(?);
  Expanded_List_VisibleVariables(Machine(Robot))==(?);
  List_VisibleVariables(Machine(Robot))==(?);
  Internal_List_VisibleVariables(Machine(Robot))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Robot))==(btrue);
  Gluing_List_Invariant(Machine(Robot))==(btrue);
  Expanded_List_Invariant(Machine(Robot))==(btrue);
  Abstract_List_Invariant(Machine(Robot))==(btrue);
  Context_List_Invariant(Machine(Robot))==(btrue);
  List_Invariant(Machine(Robot))==(x_position: NAT1 & x_position: x_coordinates & y_position: NAT1 & y_position: y_coordinates & moving_direction: DIRECTION & route: seq(path_squares))
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Robot))==(btrue);
  Abstract_List_Assertions(Machine(Robot))==(btrue);
  Context_List_Assertions(Machine(Robot))==(btrue);
  List_Assertions(Machine(Robot))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Robot))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Robot))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Robot))==(x_position,y_position,moving_direction,route:=1,1,North,<>);
  Context_List_Initialisation(Machine(Robot))==(skip);
  List_Initialisation(Machine(Robot))==(x_position,y_position,moving_direction,route:=1,1,North,<>)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Robot))==(?)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Robot),Machine(Maze))==(?)
END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Robot))==(btrue);
  List_Constraints(Machine(Robot))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Robot))==(moveNorth,moveSouth,moveEast,moveWest,teleport,getPosition,foundExit,visitedSquare,robotsRoute,resetRobot,getRouteLength,getFirstNSquaresTheRobotVisited);
  List_Operations(Machine(Robot))==(moveNorth,moveSouth,moveEast,moveWest,teleport,getPosition,foundExit,visitedSquare,robotsRoute,resetRobot,getRouteLength,getFirstNSquaresTheRobotVisited)
END
&
THEORY ListInputX IS
  List_Input(Machine(Robot),moveNorth)==(?);
  List_Input(Machine(Robot),moveSouth)==(?);
  List_Input(Machine(Robot),moveEast)==(?);
  List_Input(Machine(Robot),moveWest)==(?);
  List_Input(Machine(Robot),teleport)==(xx,yy);
  List_Input(Machine(Robot),getPosition)==(?);
  List_Input(Machine(Robot),foundExit)==(?);
  List_Input(Machine(Robot),visitedSquare)==(xx,yy);
  List_Input(Machine(Robot),robotsRoute)==(?);
  List_Input(Machine(Robot),resetRobot)==(?);
  List_Input(Machine(Robot),getRouteLength)==(?);
  List_Input(Machine(Robot),getFirstNSquaresTheRobotVisited)==(num)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Robot),moveNorth)==(output);
  List_Output(Machine(Robot),moveSouth)==(output);
  List_Output(Machine(Robot),moveEast)==(output);
  List_Output(Machine(Robot),moveWest)==(output);
  List_Output(Machine(Robot),teleport)==(output);
  List_Output(Machine(Robot),getPosition)==(current_position);
  List_Output(Machine(Robot),foundExit)==(output);
  List_Output(Machine(Robot),visitedSquare)==(output);
  List_Output(Machine(Robot),robotsRoute)==(robots_route);
  List_Output(Machine(Robot),resetRobot)==(?);
  List_Output(Machine(Robot),getRouteLength)==(route_length);
  List_Output(Machine(Robot),getFirstNSquaresTheRobotVisited)==(first_n_squares)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Robot),moveNorth)==(output <-- moveNorth);
  List_Header(Machine(Robot),moveSouth)==(output <-- moveSouth);
  List_Header(Machine(Robot),moveEast)==(output <-- moveEast);
  List_Header(Machine(Robot),moveWest)==(output <-- moveWest);
  List_Header(Machine(Robot),teleport)==(output <-- teleport(xx,yy));
  List_Header(Machine(Robot),getPosition)==(current_position <-- getPosition);
  List_Header(Machine(Robot),foundExit)==(output <-- foundExit);
  List_Header(Machine(Robot),visitedSquare)==(output <-- visitedSquare(xx,yy));
  List_Header(Machine(Robot),robotsRoute)==(robots_route <-- robotsRoute);
  List_Header(Machine(Robot),resetRobot)==(resetRobot);
  List_Header(Machine(Robot),getRouteLength)==(route_length <-- getRouteLength);
  List_Header(Machine(Robot),getFirstNSquaresTheRobotVisited)==(first_n_squares <-- getFirstNSquaresTheRobotVisited(num))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Robot),moveNorth)==(btrue);
  List_Precondition(Machine(Robot),moveSouth)==(btrue);
  List_Precondition(Machine(Robot),moveEast)==(btrue);
  List_Precondition(Machine(Robot),moveWest)==(btrue);
  List_Precondition(Machine(Robot),teleport)==(xx: NAT1 & yy: NAT1 & xx: x_coordinates & yy: y_coordinates & xx|->yy: maze & xx|->yy/=(x_position|->y_position));
  List_Precondition(Machine(Robot),getPosition)==(btrue);
  List_Precondition(Machine(Robot),foundExit)==(btrue);
  List_Precondition(Machine(Robot),visitedSquare)==(xx: NAT1 & xx: x_coordinates & yy: NAT1 & yy: y_coordinates & xx|->yy: maze & xx|->yy: path_squares & xx|->yy/:internal_wall_squares);
  List_Precondition(Machine(Robot),robotsRoute)==(btrue);
  List_Precondition(Machine(Robot),resetRobot)==(btrue);
  List_Precondition(Machine(Robot),getRouteLength)==(btrue);
  List_Precondition(Machine(Robot),getFirstNSquaresTheRobotVisited)==(num: NAT1 & num<=size(route))
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Robot),getFirstNSquaresTheRobotVisited)==(num: NAT1 & num<=size(route) | first_n_squares:=route/|\num);
  Expanded_List_Substitution(Machine(Robot),getRouteLength)==(btrue | route_length:=size(route));
  Expanded_List_Substitution(Machine(Robot),resetRobot)==(btrue | x_position,y_position,route,moving_direction:=1,1,<>,North);
  Expanded_List_Substitution(Machine(Robot),robotsRoute)==(btrue | robots_route:=route);
  Expanded_List_Substitution(Machine(Robot),visitedSquare)==(xx: NAT1 & xx: x_coordinates & yy: NAT1 & yy: y_coordinates & xx|->yy: maze & xx|->yy: path_squares & xx|->yy/:internal_wall_squares | xx|->yy: ran(route) ==> output:=YES [] not(xx|->yy: ran(route)) ==> output:=NO);
  Expanded_List_Substitution(Machine(Robot),foundExit)==(btrue | x_position|->y_position = exit_square ==> output:=YES [] not(x_position|->y_position = exit_square) ==> output:=NO);
  Expanded_List_Substitution(Machine(Robot),getPosition)==(btrue | current_position:=x_position|->y_position);
  Expanded_List_Substitution(Machine(Robot),teleport)==(xx: NAT1 & yy: NAT1 & xx: x_coordinates & yy: y_coordinates & xx|->yy: maze & xx|->yy/=(x_position|->y_position) | xx|->yy: internal_wall_squares ==> output:=FAILED_DUE_TO_AN_INTERNAL_WALL [] not(xx|->yy: internal_wall_squares) ==> (size(route) = 0 & xx|->yy: path_squares ==> output:=INVALID_FIRST_ATTEMPT [] not(size(route) = 0 & xx|->yy: path_squares) ==> (size(route)/=0 & xx|->yy: path_squares ==> x_position,y_position,route,output:=xx,yy,route<-(x_position|->y_position),MOVED_SUCCESSFULLY [] not(size(route)/=0 & xx|->yy: path_squares) ==> skip)));
  Expanded_List_Substitution(Machine(Robot),moveWest)==(btrue | pred(x_position)|->y_position: maze ==> (pred(x_position)|->y_position: path_squares ==> moving_direction,x_position,route,output:=West,pred(x_position),route<-(x_position|->y_position),MOVED_SUCCESSFULLY [] not(pred(x_position)|->y_position: path_squares) ==> output:=FAILED_DUE_TO_AN_INTERNAL_WALL) [] not(pred(x_position)|->y_position: maze) ==> output:=FAILED_DUE_TO_THE_MAZE_BOUNDARY);
  Expanded_List_Substitution(Machine(Robot),moveEast)==(btrue | succ(x_position)|->y_position: maze ==> (succ(x_position)|->y_position: path_squares ==> moving_direction,x_position,route,output:=East,succ(x_position),route<-(x_position|->y_position),MOVED_SUCCESSFULLY [] not(succ(x_position)|->y_position: path_squares) ==> output:=FAILED_DUE_TO_AN_INTERNAL_WALL) [] not(succ(x_position)|->y_position: maze) ==> output:=FAILED_DUE_TO_THE_MAZE_BOUNDARY);
  Expanded_List_Substitution(Machine(Robot),moveSouth)==(btrue | x_position|->pred(y_position): maze ==> (x_position|->pred(y_position): path_squares ==> moving_direction,y_position,route,output:=South,pred(y_position),route<-(x_position|->y_position),MOVED_SUCCESSFULLY [] not(x_position|->pred(y_position): path_squares) ==> output:=FAILED_DUE_TO_AN_INTERNAL_WALL) [] not(x_position|->pred(y_position): maze) ==> output:=FAILED_DUE_TO_THE_MAZE_BOUNDARY);
  Expanded_List_Substitution(Machine(Robot),moveNorth)==(btrue | x_position|->succ(y_position): maze ==> (x_position|->succ(y_position): path_squares ==> moving_direction,y_position,route,output:=North,succ(y_position),route<-(x_position|->y_position),MOVED_SUCCESSFULLY [] not(x_position|->succ(y_position): path_squares) ==> output:=FAILED_DUE_TO_AN_INTERNAL_WALL) [] not(x_position|->succ(y_position): maze) ==> output:=FAILED_DUE_TO_THE_MAZE_BOUNDARY);
  List_Substitution(Machine(Robot),moveNorth)==(IF x_position|->succ(y_position): maze THEN IF x_position|->succ(y_position): path_squares THEN moving_direction,y_position,route,output:=North,succ(y_position),route<-(x_position|->y_position),MOVED_SUCCESSFULLY ELSE output:=FAILED_DUE_TO_AN_INTERNAL_WALL END ELSE output:=FAILED_DUE_TO_THE_MAZE_BOUNDARY END);
  List_Substitution(Machine(Robot),moveSouth)==(IF x_position|->pred(y_position): maze THEN IF x_position|->pred(y_position): path_squares THEN moving_direction,y_position,route,output:=South,pred(y_position),route<-(x_position|->y_position),MOVED_SUCCESSFULLY ELSE output:=FAILED_DUE_TO_AN_INTERNAL_WALL END ELSE output:=FAILED_DUE_TO_THE_MAZE_BOUNDARY END);
  List_Substitution(Machine(Robot),moveEast)==(IF succ(x_position)|->y_position: maze THEN IF succ(x_position)|->y_position: path_squares THEN moving_direction,x_position,route,output:=East,succ(x_position),route<-(x_position|->y_position),MOVED_SUCCESSFULLY ELSE output:=FAILED_DUE_TO_AN_INTERNAL_WALL END ELSE output:=FAILED_DUE_TO_THE_MAZE_BOUNDARY END);
  List_Substitution(Machine(Robot),moveWest)==(IF pred(x_position)|->y_position: maze THEN IF pred(x_position)|->y_position: path_squares THEN moving_direction,x_position,route,output:=West,pred(x_position),route<-(x_position|->y_position),MOVED_SUCCESSFULLY ELSE output:=FAILED_DUE_TO_AN_INTERNAL_WALL END ELSE output:=FAILED_DUE_TO_THE_MAZE_BOUNDARY END);
  List_Substitution(Machine(Robot),teleport)==(IF xx|->yy: internal_wall_squares THEN output:=FAILED_DUE_TO_AN_INTERNAL_WALL ELSIF size(route) = 0 & xx|->yy: path_squares THEN output:=INVALID_FIRST_ATTEMPT ELSIF size(route)/=0 & xx|->yy: path_squares THEN x_position,y_position,route,output:=xx,yy,route<-(x_position|->y_position),MOVED_SUCCESSFULLY END);
  List_Substitution(Machine(Robot),getPosition)==(current_position:=x_position|->y_position);
  List_Substitution(Machine(Robot),foundExit)==(IF x_position|->y_position = exit_square THEN output:=YES ELSE output:=NO END);
  List_Substitution(Machine(Robot),visitedSquare)==(IF xx|->yy: ran(route) THEN output:=YES ELSE output:=NO END);
  List_Substitution(Machine(Robot),robotsRoute)==(robots_route:=route);
  List_Substitution(Machine(Robot),resetRobot)==(x_position,y_position,route,moving_direction:=1,1,<>,North);
  List_Substitution(Machine(Robot),getRouteLength)==(route_length:=size(route));
  List_Substitution(Machine(Robot),getFirstNSquaresTheRobotVisited)==(first_n_squares:=route/|\num)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Robot))==(?);
  Inherited_List_Constants(Machine(Robot))==(?);
  List_Constants(Machine(Robot))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Robot),DIRECTION)==({North,South,East,West});
  Context_List_Enumerated(Machine(Robot))==(?);
  Context_List_Defered(Machine(Robot))==(?);
  Context_List_Sets(Machine(Robot))==(?);
  List_Valuable_Sets(Machine(Robot))==(?);
  Inherited_List_Enumerated(Machine(Robot))==(?);
  Inherited_List_Defered(Machine(Robot))==(?);
  Inherited_List_Sets(Machine(Robot))==(?);
  List_Enumerated(Machine(Robot))==(DIRECTION,OUTPUT);
  List_Defered(Machine(Robot))==(?);
  List_Sets(Machine(Robot))==(DIRECTION,OUTPUT);
  Set_Definition(Machine(Robot),OUTPUT)==({MOVED_SUCCESSFULLY,FAILED_DUE_TO_THE_MAZE_BOUNDARY,FAILED_DUE_TO_AN_INTERNAL_WALL,INVALID_FIRST_ATTEMPT,YES,NO})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Robot))==(?);
  Expanded_List_HiddenConstants(Machine(Robot))==(?);
  List_HiddenConstants(Machine(Robot))==(?);
  External_List_HiddenConstants(Machine(Robot))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Robot))==(btrue);
  Context_List_Properties(Machine(Robot))==(maze_width: NAT1 & maze_width = 7 & maze_height: NAT1 & maze_height = 5 & x_coordinates = 1..maze_width & x_coordinates <: NAT1 & y_coordinates = 1..maze_height & y_coordinates <: NAT1 & maze: x_coordinates <-> y_coordinates & maze = x_coordinates*y_coordinates & internal_wall_squares: x_coordinates <-> y_coordinates & internal_wall_squares <: maze & internal_wall_squares = {1|->3,2|->1,2|->3,2|->5,3|->3,4|->2,4|->3,4|->4,6|->1,6|->2,6|->4,7|->4} & path_squares: x_coordinates <-> y_coordinates & path_squares <: maze & path_squares = maze-internal_wall_squares & path_squares/=internal_wall_squares & exit_square: maze & exit_square: path_squares & exit_square = 1|->5);
  Inherited_List_Properties(Machine(Robot))==(btrue);
  List_Properties(Machine(Robot))==(DIRECTION: FIN(INTEGER) & not(DIRECTION = {}) & OUTPUT: FIN(INTEGER) & not(OUTPUT = {}))
END
&
THEORY ListSeenInfoX IS
  Seen_Internal_List_Operations(Machine(Robot),Machine(Maze))==(getTotalNumberOfSquares,getTotalNumberOfInternalWalls,getTotalNumberOfPathSquares);
  Seen_Context_List_Enumerated(Machine(Robot))==(?);
  Seen_Context_List_Invariant(Machine(Robot))==(btrue);
  Seen_Context_List_Assertions(Machine(Robot))==(btrue);
  Seen_Context_List_Properties(Machine(Robot))==(btrue);
  Seen_List_Constraints(Machine(Robot))==(btrue);
  Seen_List_Precondition(Machine(Robot),getTotalNumberOfPathSquares)==(btrue);
  Seen_Expanded_List_Substitution(Machine(Robot),getTotalNumberOfPathSquares)==(number_of_path_squares:=card(path_squares));
  Seen_List_Precondition(Machine(Robot),getTotalNumberOfInternalWalls)==(btrue);
  Seen_Expanded_List_Substitution(Machine(Robot),getTotalNumberOfInternalWalls)==(number_of_walls:=card(internal_wall_squares));
  Seen_List_Precondition(Machine(Robot),getTotalNumberOfSquares)==(btrue);
  Seen_Expanded_List_Substitution(Machine(Robot),getTotalNumberOfSquares)==(number_of_squares:=card(maze));
  Seen_List_Operations(Machine(Robot),Machine(Maze))==(getTotalNumberOfSquares,getTotalNumberOfInternalWalls,getTotalNumberOfPathSquares);
  Seen_Expanded_List_Invariant(Machine(Robot),Machine(Maze))==(btrue)
END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Robot),moveNorth)==(?);
  List_ANY_Var(Machine(Robot),moveSouth)==(?);
  List_ANY_Var(Machine(Robot),moveEast)==(?);
  List_ANY_Var(Machine(Robot),moveWest)==(?);
  List_ANY_Var(Machine(Robot),teleport)==(?);
  List_ANY_Var(Machine(Robot),getPosition)==(?);
  List_ANY_Var(Machine(Robot),foundExit)==(?);
  List_ANY_Var(Machine(Robot),visitedSquare)==(?);
  List_ANY_Var(Machine(Robot),robotsRoute)==(?);
  List_ANY_Var(Machine(Robot),resetRobot)==(?);
  List_ANY_Var(Machine(Robot),getRouteLength)==(?);
  List_ANY_Var(Machine(Robot),getFirstNSquaresTheRobotVisited)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Robot)) == (DIRECTION,OUTPUT,North,South,East,West,MOVED_SUCCESSFULLY,FAILED_DUE_TO_THE_MAZE_BOUNDARY,FAILED_DUE_TO_AN_INTERNAL_WALL,INVALID_FIRST_ATTEMPT,YES,NO | ? | route,moving_direction,y_position,x_position | ? | moveNorth,moveSouth,moveEast,moveWest,teleport,getPosition,foundExit,visitedSquare,robotsRoute,resetRobot,getRouteLength,getFirstNSquaresTheRobotVisited | ? | seen(Machine(Maze)) | ? | Robot);
  List_Of_HiddenCst_Ids(Machine(Robot)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Robot)) == (?);
  List_Of_VisibleVar_Ids(Machine(Robot)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Robot)) == (?: ?);
  List_Of_Ids(Machine(Maze)) == (maze_width,maze_height,x_coordinates,y_coordinates,maze,internal_wall_squares,path_squares,exit_square | ? | ? | ? | getTotalNumberOfSquares,getTotalNumberOfInternalWalls,getTotalNumberOfPathSquares | ? | ? | ? | Maze);
  List_Of_HiddenCst_Ids(Machine(Maze)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Maze)) == (maze_width,maze_height,x_coordinates,y_coordinates,maze,internal_wall_squares,path_squares,exit_square);
  List_Of_VisibleVar_Ids(Machine(Maze)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Maze)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Robot)) == (Type(DIRECTION) == Cst(SetOf(etype(DIRECTION,0,3)));Type(OUTPUT) == Cst(SetOf(etype(OUTPUT,0,5))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Robot)) == (Type(North) == Cst(etype(DIRECTION,0,3));Type(South) == Cst(etype(DIRECTION,0,3));Type(East) == Cst(etype(DIRECTION,0,3));Type(West) == Cst(etype(DIRECTION,0,3));Type(MOVED_SUCCESSFULLY) == Cst(etype(OUTPUT,0,5));Type(FAILED_DUE_TO_THE_MAZE_BOUNDARY) == Cst(etype(OUTPUT,0,5));Type(FAILED_DUE_TO_AN_INTERNAL_WALL) == Cst(etype(OUTPUT,0,5));Type(INVALID_FIRST_ATTEMPT) == Cst(etype(OUTPUT,0,5));Type(YES) == Cst(etype(OUTPUT,0,5));Type(NO) == Cst(etype(OUTPUT,0,5)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Robot)) == (Type(route) == Mvl(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))));Type(moving_direction) == Mvl(etype(DIRECTION,?,?));Type(y_position) == Mvl(btype(INTEGER,?,?));Type(x_position) == Mvl(btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Robot)) == (Type(getFirstNSquaresTheRobotVisited) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),btype(INTEGER,?,?));Type(getRouteLength) == Cst(btype(INTEGER,?,?),No_type);Type(resetRobot) == Cst(No_type,No_type);Type(robotsRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(visitedSquare) == Cst(etype(OUTPUT,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(foundExit) == Cst(etype(OUTPUT,?,?),No_type);Type(getPosition) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type);Type(teleport) == Cst(etype(OUTPUT,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(moveWest) == Cst(etype(OUTPUT,?,?),No_type);Type(moveEast) == Cst(etype(OUTPUT,?,?),No_type);Type(moveSouth) == Cst(etype(OUTPUT,?,?),No_type);Type(moveNorth) == Cst(etype(OUTPUT,?,?),No_type));
  Observers(Machine(Robot)) == (Type(getFirstNSquaresTheRobotVisited) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),btype(INTEGER,?,?));Type(getRouteLength) == Cst(btype(INTEGER,?,?),No_type);Type(robotsRoute) == Cst(SetOf(btype(INTEGER,?,?)*(btype(INTEGER,?,?)*btype(INTEGER,?,?))),No_type);Type(visitedSquare) == Cst(etype(OUTPUT,?,?),btype(INTEGER,?,?)*btype(INTEGER,?,?));Type(foundExit) == Cst(etype(OUTPUT,?,?),No_type);Type(getPosition) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?),No_type))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
