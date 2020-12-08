@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Teammembers'

define root view entity ZI_ZZHP_TEAM

  as select from zzhp_teams as Team

  composition [0..*] of zi_zzhp_teammember as _Member

{
  key team_uuid             as TeamUuid,
      team_nickname         as TeamNickName,
      team_name             as TeamName,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      /* Associations */
      _Member
}
