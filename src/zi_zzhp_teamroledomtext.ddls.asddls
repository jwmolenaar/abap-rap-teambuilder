@AbapCatalog.sqlViewName: 'ZITEAMROLEDOMT'
@EndUserText.label: 'Team Role Text'

@AbapCatalog.compiler.compareFilter: true
@ClientHandling.algorithm: #SESSION_VARIABLE
@AccessControl.authorizationCheck: #NOT_REQUIRED

@ObjectModel.dataCategory: #TEXT

define view ZI_ZZHP_TeamRoleDomText
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: 'ZZHP_TEAMROLE' ) as DomValText
  association [0..1] to I_Language          as _Language on $projection.Language = _Language.Language
  association [1..1] to ZI_ZZHP_TeamRoleDom as _TeamRole on $projection.TeamRoleText = _TeamRole.TeamRole
{

  key DomValText.domain_name                                   as DomainName,
  key DomValText.value_position                                as ValuePosition,

      @Semantics.language: true
      @ObjectModel.foreignKey.association: '_Language'
  key DomValText.language                                      as Language,
  key cast(LEFT( DomValText.value_low, 4 ) as  zzhp_teamrole ) as TeamRole,
      @Semantics.text:true
      DomValText.text                                          as TeamRoleText,
      _Language,
      _TeamRole
}
