@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'interface of Course'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_Course_173 as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name:'ZDOM_COURSE' )
{
    key domain_name,
    key value_position,
    @Semantics.language: true
    key language,
    value_low as Course_Value,
    @Semantics.text: true
    text as Course_text
}
