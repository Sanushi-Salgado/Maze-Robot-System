Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Maze))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Maze))==(Machine(Maze));
  Level(Machine(Maze))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Maze)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Maze))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Maze))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Maze))==(?);
  List_Includes(Machine(Maze))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Maze))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Maze))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Maze))==(?);
  Context_List_Variables(Machine(Maze))==(?);
  Abstract_List_Variables(Machine(Maze))==(?);
  Local_List_Variables(Machine(Maze))==(?);
  List_Variables(Machine(Maze))==(?);
  External_List_Variables(Machine(Maze))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Maze))==(?);
  Abstract_List_VisibleVariables(Machine(Maze))==(?);
  External_List_VisibleVariables(Machine(Maze))==(?);
  Expanded_List_VisibleVariables(Machine(Maze))==(?);
  List_VisibleVariables(Machine(Maze))==(?);
  Internal_List_VisibleVariables(Machine(Maze))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Maze))==(btrue);
  Gluing_List_Invariant(Machine(Maze))==(btrue);
  Expanded_List_Invariant(Machine(Maze))==(btrue);
  Abstract_List_Invariant(Machine(Maze))==(btrue);
  Context_List_Invariant(Machine(Maze))==(btrue);
  List_Invariant(Machine(Maze))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Maze))==(btrue);
  Abstract_List_Assertions(Machine(Maze))==(btrue);
  Context_List_Assertions(Machine(Maze))==(btrue);
  List_Assertions(Machine(Maze))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Maze))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Maze))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Maze))==(skip);
  Context_List_Initialisation(Machine(Maze))==(skip);
  List_Initialisation(Machine(Maze))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Maze))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Maze))==(btrue);
  List_Constraints(Machine(Maze))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Maze))==(getTotalNumberOfSquares,getTotalNumberOfInternalWalls,getTotalNumberOfPathSquares);
  List_Operations(Machine(Maze))==(getTotalNumberOfSquares,getTotalNumberOfInternalWalls,getTotalNumberOfPathSquares)
END
&
THEORY ListInputX IS
  List_Input(Machine(Maze),getTotalNumberOfSquares)==(?);
  List_Input(Machine(Maze),getTotalNumberOfInternalWalls)==(?);
  List_Input(Machine(Maze),getTotalNumberOfPathSquares)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Maze),getTotalNumberOfSquares)==(number_of_squares);
  List_Output(Machine(Maze),getTotalNumberOfInternalWalls)==(number_of_walls);
  List_Output(Machine(Maze),getTotalNumberOfPathSquares)==(number_of_path_squares)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Maze),getTotalNumberOfSquares)==(number_of_squares <-- getTotalNumberOfSquares);
  List_Header(Machine(Maze),getTotalNumberOfInternalWalls)==(number_of_walls <-- getTotalNumberOfInternalWalls);
  List_Header(Machine(Maze),getTotalNumberOfPathSquares)==(number_of_path_squares <-- getTotalNumberOfPathSquares)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Maze),getTotalNumberOfSquares)==(btrue);
  List_Precondition(Machine(Maze),getTotalNumberOfInternalWalls)==(btrue);
  List_Precondition(Machine(Maze),getTotalNumberOfPathSquares)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Maze),getTotalNumberOfPathSquares)==(btrue | number_of_path_squares:=card(path_squares));
  Expanded_List_Substitution(Machine(Maze),getTotalNumberOfInternalWalls)==(btrue | number_of_walls:=card(internal_wall_squares));
  Expanded_List_Substitution(Machine(Maze),getTotalNumberOfSquares)==(btrue | number_of_squares:=card(maze));
  List_Substitution(Machine(Maze),getTotalNumberOfSquares)==(number_of_squares:=card(maze));
  List_Substitution(Machine(Maze),getTotalNumberOfInternalWalls)==(number_of_walls:=card(internal_wall_squares));
  List_Substitution(Machine(Maze),getTotalNumberOfPathSquares)==(number_of_path_squares:=card(path_squares))
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Maze))==(maze_width,maze_height,x_coordinates,y_coordinates,maze,internal_wall_squares,path_squares,exit_square);
  Inherited_List_Constants(Machine(Maze))==(?);
  List_Constants(Machine(Maze))==(maze_width,maze_height,x_coordinates,y_coordinates,maze,internal_wall_squares,path_squares,exit_square)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Maze))==(?);
  Context_List_Defered(Machine(Maze))==(?);
  Context_List_Sets(Machine(Maze))==(?);
  List_Valuable_Sets(Machine(Maze))==(?);
  Inherited_List_Enumerated(Machine(Maze))==(?);
  Inherited_List_Defered(Machine(Maze))==(?);
  Inherited_List_Sets(Machine(Maze))==(?);
  List_Enumerated(Machine(Maze))==(?);
  List_Defered(Machine(Maze))==(?);
  List_Sets(Machine(Maze))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Maze))==(?);
  Expanded_List_HiddenConstants(Machine(Maze))==(?);
  List_HiddenConstants(Machine(Maze))==(?);
  External_List_HiddenConstants(Machine(Maze))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Maze))==(btrue);
  Context_List_Properties(Machine(Maze))==(btrue);
  Inherited_List_Properties(Machine(Maze))==(btrue);
  List_Properties(Machine(Maze))==(maze_width: NAT1 & maze_width = 7 & maze_height: NAT1 & maze_height = 5 & x_coordinates = 1..maze_width & x_coordinates <: NAT1 & y_coordinates = 1..maze_height & y_coordinates <: NAT1 & maze: x_coordinates <-> y_coordinates & maze = x_coordinates*y_coordinates & internal_wall_squares: x_coordinates <-> y_coordinates & internal_wall_squares <: maze & internal_wall_squares = {1|->3,2|->1,2|->3,2|->5,3|->3,4|->2,4|->3,4|->4,6|->1,6|->2,6|->4,7|->4} & path_squares: x_coordinates <-> y_coordinates & path_squares <: maze & path_squares = maze-internal_wall_squares & path_squares/=internal_wall_squares & exit_square: maze & exit_square: path_squares & exit_square = 1|->5)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Maze),getTotalNumberOfSquares)==(?);
  List_ANY_Var(Machine(Maze),getTotalNumberOfInternalWalls)==(?);
  List_ANY_Var(Machine(Maze),getTotalNumberOfPathSquares)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Maze)) == (maze_width,maze_height,x_coordinates,y_coordinates,maze,internal_wall_squares,path_squares,exit_square | ? | ? | ? | getTotalNumberOfSquares,getTotalNumberOfInternalWalls,getTotalNumberOfPathSquares | ? | ? | ? | Maze);
  List_Of_HiddenCst_Ids(Machine(Maze)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Maze)) == (maze_width,maze_height,x_coordinates,y_coordinates,maze,internal_wall_squares,path_squares,exit_square);
  List_Of_VisibleVar_Ids(Machine(Maze)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Maze)) == (?: ?)
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Maze)) == (Type(maze_width) == Cst(btype(INTEGER,?,?));Type(maze_height) == Cst(btype(INTEGER,?,?));Type(x_coordinates) == Cst(SetOf(btype(INTEGER,"[x_coordinates","]x_coordinates")));Type(y_coordinates) == Cst(SetOf(btype(INTEGER,"[y_coordinates","]y_coordinates")));Type(maze) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(internal_wall_squares) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(path_squares) == Cst(SetOf(btype(INTEGER,?,?)*btype(INTEGER,?,?)));Type(exit_square) == Cst(btype(INTEGER,?,?)*btype(INTEGER,?,?)))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Maze)) == (Type(getTotalNumberOfPathSquares) == Cst(btype(INTEGER,?,?),No_type);Type(getTotalNumberOfInternalWalls) == Cst(btype(INTEGER,?,?),No_type);Type(getTotalNumberOfSquares) == Cst(btype(INTEGER,?,?),No_type));
  Observers(Machine(Maze)) == (Type(getTotalNumberOfPathSquares) == Cst(btype(INTEGER,?,?),No_type);Type(getTotalNumberOfInternalWalls) == Cst(btype(INTEGER,?,?),No_type);Type(getTotalNumberOfSquares) == Cst(btype(INTEGER,?,?),No_type))
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
