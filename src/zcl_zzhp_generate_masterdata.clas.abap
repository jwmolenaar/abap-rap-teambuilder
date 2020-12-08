class zcl_zzhp_generate_masterdata definition
  public
  final
  create public .

  public section.
    interfaces if_oo_adt_classrun .
  protected section.
  private section.
endclass.



class zcl_zzhp_generate_masterdata implementation.
  method if_oo_adt_classrun~main.

    data: lt_roles type table of zzhp_roles.

    lt_roles = value #( ( role = 'NICG'  description = 'Nice Guy')
                        ( role = 'JOKR'  description = 'Joker')
                        ( role = 'COOK'  description = 'Cook')
                        ( role = 'LEAD'  description = 'Leader')
                        ( role = '2NDL'  description = 'Secundariy leader')
                        ( role = 'GNDR'  description = 'The other desirable gender')
                        ( role = 'JUST'  description = 'Just a member')
                        ( role = 'BULY'  description = 'Bullying person') ).

    delete from zzhp_roles.
    insert zzhp_roles from table @lt_roles.
    out->write( |Rollen toegevoegd in tabel zzhp_roles.| ).

    commit work.

  endmethod.

endclass.
