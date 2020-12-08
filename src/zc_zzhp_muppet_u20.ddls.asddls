@EndUserText.label: 'Muppets UI5 2.0'
@AccessControl.authorizationCheck: #NOT_REQUIRED

define root view entity ZC_ZZHP_MUPPET_U20 as projection on ZI_ZZHP_MUPPET {
    key MuppetUuid,
    MuppetName,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    LocalLastChangedAt
}
