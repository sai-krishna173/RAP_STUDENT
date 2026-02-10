@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view of Academic'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_academic_173 as projection on ZI_academic_173
{
    @EndUserText.label: 'Student ID'
    key Id,
    @EndUserText.label: 'Course'
    key Course,
    @EndUserText.label: 'Semester'
    key Semester,
    @EndUserText.label: 'Course Description'
    Course_desc,
    @EndUserText.label: 'Semester Description'
    Semester_desc,
    @EndUserText.label: 'Result'
    Semresult,
    @EndUserText.label: 'Result Description'
    Result_desc,
    /* Associations */
    _Course,
    _semester,
    _sem_resul,
    _Student : redirected to parent ZC_STUD_0173
}
