@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface of Semester'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_SEMESTER_173 as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name:'ZDOM_SEMESTER' )
{
    key domain_name,
    key value_position,
    @Semantics.language: true
    key language,
    value_low as SemesterVal,
    @Semantics.text: true
    text as Sem_Text
}
