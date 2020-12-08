@EndUserText.label: 'Team members'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
@UI.headerInfo : { typeName :       'Teammember',
                   typeNamePlural : 'Teammembers',
                   title.type:      #STANDARD,
                   title.value:     'MemberUuid' }


define view entity ZC_ZZHP_TEAMMEMBER
  as projection on zi_zzhp_teammember as TeamMember
{
      @UI.facet: [ { id:            'Teammember',
                     purpose:       #STANDARD,
                     type:          #IDENTIFICATION_REFERENCE,
                     label:         'Teammember',
                     position:      10 }  ]


      @EndUserText.label: 'Member UIDD'
      @UI.hidden: true
  key MemberUuid,

      @Search.defaultSearchElement: true
      @UI: {lineItem:        [ { position: 10 } ],
           identification:   [ { position: 10 } ] }
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZC_ZZHP_MUPPET', element: 'MuppetUuid'} }]
      @EndUserText.label: 'Muppet UIDD'
      MuppetId,

      @UI: {lineItem:   [ { position: 20 } ],
      identification:   [ { position: 20 } ] }
      @EndUserText.label: 'Muppet name'
      _Muppet.MuppetName,


      @UI.hidden: true
      @EndUserText.label: 'Team UIDD'
      TeamId,

      @UI: {lineItem:        [ { position: 30 } ],
           identification:   [ { position: 30 } ],
           selectionField:   [ { position: 10 } ] }
      @EndUserText.label: 'Team role'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZC_ZZHP_TEAMROLE_VAL', element: 'Role'} }]
      TeamRole,

      @UI: {lineItem:        [ { position: 40 } ],
           identification:   [ { position: 40 } ] }
      @EndUserText.label: 'Team role description'
      _TeamRoleVal.Description,
      
      _Muppet.hourlyFee,
      _Muppet.CurrencyCode,


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
      _Team : redirected to parent ZC_ZZHP_TEAM,
      _TeamRoleVal


}
