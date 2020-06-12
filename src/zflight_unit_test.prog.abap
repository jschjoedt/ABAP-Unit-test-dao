*&---------------------------------------------------------------------*
*& Report zflight_unit_test
*&---------------------------------------------------------------------*
*& Uses DAO class to get flights from DB.
*&---------------------------------------------------------------------*
REPORT zflight_unit_test.

" Create instance
DATA(lo_flight_dao) = zcl_flight_dao=>get_instance(  ).

" Get all flights
DATA(lt_flights) = lo_flight_dao->get_flights_by_carrier_id( 'AA' ).

" Calculate avg. price
DATA(lv_avg_price) = lo_flight_dao->calculate_avg_price( lt_flights ).

" Write result
WRITE: lv_avg_price.
