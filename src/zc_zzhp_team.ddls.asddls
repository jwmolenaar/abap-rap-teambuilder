@EndUserText.label: 'Projection team'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
@UI.headerInfo : { typeName :       'Team',
                   typeNamePlural : 'Teams',
                   title.type:      #STANDARD,
                   title.value:     'TeamName' }

define root view entity ZC_ZZHP_TEAM
  as projection on ZI_ZZHP_TEAM
{
      @UI.facet: [ { id:              'Team',
                     purpose:         #STANDARD,
                     type:            #IDENTIFICATION_REFERENCE,
                     label:           'General team info',
                     position:        10 },
                     
                   { id:              'Teammember',
                     purpose:         #STANDARD,
                     type:            #LINEITEM_REFERENCE,
                     label:           'Team member',
                     position:        20,
                     targetElement:   '_Member'}

                   ]

      @Search.defaultSearchElement: true
      @UI: {lineItem:        [ { position: 40 } ] }
      @EndUserText: {label: 'Team UIDD', quickInfo: 'Look at this great Team UIDD'}
  key TeamUuid,

      @Search.defaultSearchElement: true
      @UI: {lineItem:        [ { position: 20 }  ],
           identification:   [ { position: 20 }  ] }
      @EndUserText.label: 'Team Nickname'
      TeamNickName,

      @Search.defaultSearchElement: true
      @UI: {lineItem:        [ { position: 30 }  ],
           identification:   [ { position: 30 }  ] }
      TeamName,

      @UI.hidden: true
      CreatedBy,
      @UI.hidden: true
      CreatedAt,
      @UI.hidden: true
      LastChangedBy,
      @UI.hidden: true
      LastChangedAt,
      @UI.hidden: true
      LocalLastChangedAt,
      /* Associations */
      _Member : redirected to composition child ZC_ZZHP_TEAMMEMBER
}
