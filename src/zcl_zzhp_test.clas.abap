class zcl_zzhp_test definition
  public
  final
  create public .

  public section.
   methods do.
  protected section.
  private section.

endclass.



class zcl_zzhp_test implementation.
method do.
  data(ls) = CL_ABAP_CONTEXT_INFO=>get_user_alias( ).
endmethod.

endclass.
