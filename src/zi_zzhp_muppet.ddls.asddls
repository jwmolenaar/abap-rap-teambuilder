@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Muppet'
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define root view entity ZI_ZZHP_MUPPET
  as select from zzhp_muppets
{
  key muppet_uuid           as MuppetUuid,
      muppet_name           as MuppetName,
      home_page             as HomePage,
      image_url            as ImageLink,
      hourly_fee            as hourlyFee,
      currency_code         as CurrencyCode,
      @Semantics.user.createdBy: true
      created_by            as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      created_at            as CreatedAt,
      @Semantics.user.lastChangedBy: true
      last_changed_by       as LastChangedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt

}
