@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Gender'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_GENDER_173 as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: 'ZGENDER_DOMAIN' )
{
    key domain_name,
    key value_position,
    key language,
    @ObjectModel.text.element: [ 'genderText' ]
    value_low as genderCode,
    @Semantics.text: true
    text as genderText
}
