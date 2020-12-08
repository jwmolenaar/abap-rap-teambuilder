class zzhp_fill_muppet definition
  public
  final
  create public .

  public section.
    interfaces:   if_oo_adt_classrun.
  protected section.
  private section.
endclass.



class zzhp_fill_muppet implementation.
  method if_oo_adt_classrun~main.
    data lt_muppets  type standard table of zzhp_muppets with empty key.

    lt_muppets = value #(
    (
      muppet_uuid = 'AABA'
      muppet_name = 'Kermit'
    )
    (
      muppet_uuid = 'AABB'
      muppet_name = 'Grover'
    )

    ).


    insert zzhp_muppets from table @lt_muppets.





*    insert zzhp_muppets from table @value #(
*    ( 'AABA' 'Kermit')
*    ( 'AABC' 'SuperGrover')
*
*
*    )



    out->write( |Muppet data inserted. sy-dbcnt : { sy-dbcnt }| ).

  endmethod.

endclass.
