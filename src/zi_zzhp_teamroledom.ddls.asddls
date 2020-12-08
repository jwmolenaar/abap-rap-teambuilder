@AbapCatalog.sqlViewName: 'ZITEAMROLEDOM'
@EndUserText.label: 'Team Role'

@AbapCatalog.compiler.compareFilter: true
@ClientHandling.algorithm: #SESSION_VARIABLE
@AccessControl.authorizationCheck: #NOT_REQUIRED

define view ZI_ZZHP_TeamRoleDom
  as select from DDCDS_CUSTOMER_DOMAIN_VALUE( p_domain_name: 'ZZHP_TEAMROLE' ) as DomVal
  association [0..*] to ZI_ZZHP_TeamRoleDomText as _Text on $projection.TeamRole = _Text.TeamRole
{
  @ObjectModel.text.association: '_Text'
  //key cast(LEFT( DomVal.value_low, 4 ) as zzhp_teamrole ) as TeamRole,
  DomVal.value_low as TeamRole,

  _Text
}
