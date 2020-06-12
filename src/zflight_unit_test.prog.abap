*&---------------------------------------------------------------------*
*& Report zflight_unit_test
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zflight_unit_test.

 data(lo_flight_dao) = zcl_flight_dao=>get_instance(  ).

 DATA(lt_flights) = lo_flight_dao->get_flights_by_carrier_id( 'AA' ).

 data(lv_avg_price) = lo_flight_dao->calculate_avg_price( lt_flights ).

 write: lv_avg_price.
