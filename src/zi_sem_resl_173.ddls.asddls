@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface of Sem Result'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_SEM_RESL_173 as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name:'ZDOM_SEM_RESULT' )
{
    key domain_name,
    key value_position,
    @Semantics.language: true
    key language,
    value_low as Result_value,
    @Semantics.text: true
    text as Result_TEXT
}
