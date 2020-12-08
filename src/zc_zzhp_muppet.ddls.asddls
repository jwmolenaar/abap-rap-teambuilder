@Metadata.allowExtensions: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@UI.headerInfo : { typeName :       'Muppet',
                   typeNamePlural : 'Muppets',
                   title.type:      #WITH_URL,
                   title.value:     'MuppetName',
                   title.iconUrl:   'ImageLink',
                   title.url:       'HomePage' }

@UI.presentationVariant: [{
      sortOrder: [
      { by: 'MuppetName' } ],
      requestAtLeast: [ 'MuppetName' ]
      }]

define root view entity ZC_ZZHP_MUPPET
  as projection on ZI_ZZHP_MUPPET
{

      @UI.facet: [ { id:              'Muppet',
                     purpose:         #STANDARD,
                     type:            #IDENTIFICATION_REFERENCE,
                     label:           'General info',
                     position:        10 } ]

      @UI.hidden: true
  key MuppetUuid,

      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8

      @UI: {    lineItem:           [ { position: 10 } ],
                identification:     [ { position: 10 } ],
                dataFieldDefault:   [{ iconUrl: 'ImageLink'}] }
      MuppetName,

      @UI: {    identification: [ { position: 20, type: #WITH_URL, url: 'HomePage'} ] }
      HomePage,

      @UI: {    identification: [ { position: 30, type: #WITH_URL, url: 'ImageLink'} ] }
      ImageLink,

      @UI: {    lineItem:           [ { position: 40 } ],
                identification:     [ { position: 40 } ] }
      @EndUserText.label: 'Hourly Fee'
      hourlyFee,

      @UI: {    lineItem:           [ { position: 41 } ],
                identification:     [ { position: 41 } ] }
      @EndUserText.label: 'Currency'
      CurrencyCode,

      @UI: {    lineItem:           [ { position: 50 } ],
                identification:     [ { position: 50 } ] }
      @EndUserText.label: 'Created by User'
      CreatedBy,

      @UI: {    lineItem:           [ { position: 60 } ],
                identification:     [ { position: 60 } ] }
      @EndUserText.label: 'Created at'
      CreatedAt,

      @UI: {    lineItem:           [ { position: 70 } ],
                identification:     [ { position: 70 } ] }
      @EndUserText.label: 'Last changed by User'
      LastChangedBy,

      @UI: {    lineItem:           [ { position: 80 } ],
                identification:     [ { position: 80 } ] }
      @EndUserText.label: 'Last changed at'
      LastChangedAt,

      @UI.hidden: true
      LocalLastChangedAt
}
