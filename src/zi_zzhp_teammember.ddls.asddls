@AbapCatalog.sqlViewName: 'ZIZZHPTMMEMMB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Teammembers'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view zi_zzhp_teammember 
    as select from zzhp_teammembers as TeamMembers
    
    association [1..1] to ZC_ZZHP_TEAMROLE_VAL as _TeamRoleVal on $projection.TeamRole = _TeamRoleVal.Role
    association to parent ZI_ZZHP_TEAM as _Team on $projection.TeamId = _Team.TeamUuid
    association [1..1] to ZI_ZZHP_MUPPET as _Muppet on $projection.MuppetId = _Muppet.MuppetUuid
    
     {
    key member_uuid as MemberUuid,
    muppet_id as MuppetId,
    team_id as TeamId,
    @ObjectModel.foreignKey.association: '_TeamRoleVal'
    team_role as TeamRole,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    local_last_changed_at as LocalLastChangedAt,
    // Make association public
    _Team, 
    _Muppet,
    _TeamRoleVal
}
