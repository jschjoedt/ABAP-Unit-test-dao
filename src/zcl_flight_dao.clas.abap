CLASS zcl_flight_dao DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: tt_flights TYPE STANDARD TABLE OF sflight WITH DEFAULT KEY.

    METHODS constructor.

    METHODS get_flights_by_carrier_id
      IMPORTING iv_carrid         TYPE sflight-carrid
      RETURNING VALUE(rt_flights) TYPE tt_flights.

    METHODS calculate_avg_price
      IMPORTING it_flights          TYPE tt_flights
      RETURNING VALUE(rv_avg_price) TYPE sflight-price.

    CLASS-METHODS get_instance
      RETURNING VALUE(ro_flight_dao) TYPE REF TO zcl_flight_dao.
    CLASS-METHODS set_instance
      IMPORTING io_flight_dao TYPE REF TO zcl_flight_dao.

  PROTECTED SECTION.

    CLASS-DATA mo_dao_instance TYPE REF TO zcl_flight_dao.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_flight_dao IMPLEMENTATION.
  METHOD constructor.
    me->mo_dao_instance = zcl_flight_dao=>get_instance( ).
  ENDMETHOD.

  METHOD get_instance.
    IF mo_dao_instance IS INITIAL.
      CREATE OBJECT mo_dao_instance.
    ENDIF.

    ro_flight_dao = mo_dao_instance.
  ENDMETHOD.

  METHOD set_instance.
    mo_dao_instance = io_flight_dao.
  ENDMETHOD.

  METHOD get_flights_by_carrier_id.
    SELECT *
        FROM sflight
        INTO TABLE rt_flights
        WHERE
        carrid = iv_carrid.
  ENDMETHOD.

  METHOD calculate_avg_price.
    LOOP AT it_flights ASSIGNING FIELD-SYMBOL(<flight>).
      rv_avg_price = rv_avg_price + <flight>-price.
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
