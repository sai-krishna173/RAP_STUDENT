@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface of STUD'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_STUD_0173 as select from ztb_stud_0173
composition [0..*] of ZI_academic_173 as _academics
association  to ZI_GENDER_173 as _gender on $projection.Gender = _gender.genderCode

{
    key id as Id,
    fname as Fname,
    lname as Lname,
    age as Age,
    course as Course,
    courseduration as Courseduration,
    status as Status,
    gender as Gender,
    dob as Dob,
    lastchangedat as Lastchangedat,
    locallastchangedat as Locallastchangedat,
    _gender,
    _gender.genderText,
    _academics
    
}
