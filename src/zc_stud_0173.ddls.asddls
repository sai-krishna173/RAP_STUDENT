@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view of Stud data'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity  ZC_STUD_0173 provider contract transactional_query as projection on ZI_STUD_0173
{
   @EndUserText.label: 'Student ID'
    key Id,
    @EndUserText.label: 'Frist Name'
    Fname,
    @EndUserText.label: 'Last Name'
    Lname,
    @EndUserText.label: 'Age'
    Age,
    @EndUserText.label: 'Cousre'
    Course,
    @EndUserText.label: 'Course Duration'
    Courseduration,
    @EndUserText.label: 'Admitted'
    Status,
    @EndUserText.label: 'Gender'
    Gender,
    @EndUserText.label: 'Gender Code'
    genderText,
    @EndUserText.label: 'DOB'
    Dob,
    @EndUserText.label: 'Last Changed At'
    Lastchangedat,
    @EndUserText.label: 'Local Last Changed At'
    Locallastchangedat,
    _academics : redirected to composition child ZC_academic_173,
    _gender
}
