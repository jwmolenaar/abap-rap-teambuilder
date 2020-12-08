@AbapCatalog.sqlViewName: 'ZCHPTEAMROLEVAL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Team Role value help based on table'
define view ZC_ZZHP_TEAMROLE_VAL
  as select from zzhp_roles
{
  key role        as Role,
      description as Description
}
