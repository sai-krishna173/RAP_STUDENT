@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface of Academic'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZI_academic_173 as select from ztb_academic_173
association to parent ZI_STUD_0173 as _Student on $projection.Id = _Student.Id
association to ZI_SEMESTER_173 as _semester on $projection.Semester = _semester.SemesterVal
association to ZI_SEM_RESL_173 as _sem_resul on $projection.Semresult = _sem_resul.Result_value
association to ZI_Course_173 as _Course on $projection.Course = _Course.Course_Value
{
    key id as Id,
    key course as Course,
    key semester as Semester,
    _Course.Course_text as Course_desc,
    _semester.Sem_Text as Semester_desc,
    semresult as Semresult,
    _sem_resul.Result_TEXT as Result_desc,
    _Student,
    _semester,
    _sem_resul,
    _Course
}
