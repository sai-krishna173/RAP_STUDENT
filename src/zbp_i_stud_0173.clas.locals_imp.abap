CLASS lhc_Student DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Student RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Student RESULT result.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Student RESULT result.

    METHODS getAdmitted FOR MODIFY
      IMPORTING keys FOR ACTION Student~getAdmitted RESULT result.

ENDCLASS.

CLASS lhc_Student IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD get_instance_features.

    READ ENTITIES OF zi_stud_0173 IN LOCAL MODE
    ENTITY student
    FIELDS ( Status ) WITH CORRESPONDING #( keys )
    RESULT DATA(studentadmitted)
    FAILED failed.

    result = VALUE #(
    FOR studerec IN studentadmitted
    LET statusval = COND #( WHEN studerec-Status = abap_true
                            THEN if_abap_behv=>fc-o-disabled
                            ELSE
                            if_abap_behv=>fc-o-enabled )
                 IN ( %tky = studerec-%tky %action-getAdmitted = statusval )
     ).

  ENDMETHOD.

  METHOD getAdmitted.
    MODIFY ENTITIES OF zi_stud_0173 IN LOCAL MODE
    ENTITY Student
    UPDATE FIELDS ( Status ) WITH VALUE #( FOR key IN keys (
                                           %tky = key-%tky  Status = abap_true )
                                            )
    MAPPED DATA(lt_studentrec)
    FAILED DATA(lt_failed)
    REPORTED DATA(lt_reported).


    READ ENTITIES OF zi_stud_0173 IN LOCAL MODE
    ENTITY Student
    ALL FIELDS WITH CORRESPONDING #( keys )
    RESULT DATA(lt_studentdata).

    result = VALUE #( FOR stud IN lt_studentdata ( %tky = stud-%tky %param = stud ) ).
  ENDMETHOD.



ENDCLASS.
