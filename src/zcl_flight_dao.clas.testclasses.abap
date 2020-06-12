* Local mock data class to help with database lookup stub
* this is done by overwriting the actual data access object and populating with mock data.
CLASS lcl_flight_dao_mock DEFINITION INHERITING FROM zcl_flight_dao.
  PUBLIC SECTION.
    DATA mt_flights TYPE STANDARD TABLE OF sflight WITH DEFAULT KEY.
    METHODS constructor.
    METHODS get_flights_by_carrier_id REDEFINITION . " Read data from mock data instead of DB table
  PRIVATE SECTION.
    METHODS build_sflight_mock_data.
ENDCLASS.

CLASS lcl_flight_dao_mock IMPLEMENTATION.

  METHOD constructor.
    super->constructor( ).

    " Build mock data
    build_sflight_mock_data(  ).

  ENDMETHOD.


  METHOD build_sflight_mock_data.
    me->mt_flights = VALUE #(
         ( mandt ='001' carrid ='LH' connid ='0402' fldate ='20171217' price ='666.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='455' paymentsum ='350975.34 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' )
         ( mandt ='001' carrid ='DL' connid ='0106' fldate ='20171217' price ='611.01 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='458' paymentsum ='324379.55 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='AZ' connid ='0555' fldate ='20171219' price ='185.00 ' currency ='EUR' planetype ='737-800' seatsmax ='140' seatsocc ='133' paymentsum ='32143.75 ' seatsmax_b ='12' seatsocc_b ='12' seatsmax_f ='10' seatsocc_f ='10'  )
         ( mandt ='001' carrid ='AZ' connid ='0789' fldate ='20171219' price ='1030.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='250' paymentsum ='307176.90 ' seatsmax_b ='21' seatsocc_b ='20' seatsmax_f ='11' seatsocc_f ='11'  )
         ( mandt ='001' carrid ='SQ' connid ='0015' fldate ='20171219' price ='2320.04 ' currency ='SGD' planetype ='767-200' seatsmax ='260' seatsocc ='260' paymentsum ='723110.29 ' seatsmax_b ='21' seatsocc_b ='21' seatsmax_f ='11' seatsocc_f ='11'  )
         ( mandt ='001' carrid ='AA' connid ='0017' fldate ='20171219' price ='422.94 ' currency ='USD' planetype ='747-400' seatsmax ='385' seatsocc ='371' paymentsum ='191334.22 ' seatsmax_b ='31' seatsocc_b ='28' seatsmax_f ='21' seatsocc_f ='21'  )
         ( mandt ='001' carrid ='UA' connid ='0941' fldate ='20171220' price ='879.82 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='460' paymentsum ='470273.42 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='SQ' connid ='0002' fldate ='20171220' price ='2320.04 ' currency ='SGD' planetype ='A340-600' seatsmax ='330' seatsocc ='329' paymentsum ='968384.83 ' seatsmax_b ='30' seatsocc_b ='30' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='LH' connid ='0401' fldate ='20171221' price ='666.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='246' paymentsum ='196709.76 ' seatsmax_b ='21' seatsocc_b ='21' seatsmax_f ='11' seatsocc_f ='11'  )
         ( mandt ='001' carrid ='JL' connid ='0407' fldate ='20171221' price ='1061.36 ' currency ='JPY' planetype ='A380-800' seatsmax ='475' seatsocc ='450' paymentsum ='555335.23 ' seatsmax_b ='30' seatsocc_b ='28' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='QF' connid ='0005' fldate ='20171221' price ='788.64 ' currency ='AUD' planetype ='747-400' seatsmax ='385' seatsocc ='368' paymentsum ='361678.44 ' seatsmax_b ='31' seatsocc_b ='31' seatsmax_f ='21' seatsocc_f ='21'  )
         ( mandt ='001' carrid ='LH' connid ='0400' fldate ='20171222' price ='666.00 ' currency ='EUR' planetype ='A340-600' seatsmax ='330' seatsocc ='319' paymentsum ='266786.28 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='18'  )
         ( mandt ='001' carrid ='LH' connid ='2402' fldate ='20171222' price ='242.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='461' paymentsum ='128981.16 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='19'  )
         ( mandt ='001' carrid ='JL' connid ='0408' fldate ='20171222' price ='1061.36 ' currency ='JPY' planetype ='747-400' seatsmax ='385' seatsocc ='374' paymentsum ='486516.58 ' seatsmax_b ='31' seatsocc_b ='29' seatsmax_f ='21' seatsocc_f ='21'  )
         ( mandt ='001' carrid ='LH' connid ='0402' fldate ='20180307' price ='666.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='458' paymentsum ='355570.74 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='DL' connid ='0106' fldate ='20180307' price ='611.01 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='458' paymentsum ='324330.69 ' seatsmax_b ='30' seatsocc_b ='30' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='AZ' connid ='0555' fldate ='20180309' price ='185.00 ' currency ='EUR' planetype ='737-800' seatsmax ='140' seatsocc ='137' paymentsum ='32595.15 ' seatsmax_b ='12' seatsocc_b ='12' seatsmax_f ='10' seatsocc_f ='10'  )
         ( mandt ='001' carrid ='AZ' connid ='0789' fldate ='20180309' price ='1030.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='252' paymentsum ='306054.20 ' seatsmax_b ='21' seatsocc_b ='20' seatsmax_f ='11' seatsocc_f ='10'  )
         ( mandt ='001' carrid ='SQ' connid ='0015' fldate ='20180309' price ='2320.04 ' currency ='SGD' planetype ='767-200' seatsmax ='260' seatsocc ='253' paymentsum ='704225.17 ' seatsmax_b ='21' seatsocc_b ='20' seatsmax_f ='11' seatsocc_f ='11'  )
         ( mandt ='001' carrid ='AA' connid ='0017' fldate ='20180309' price ='422.94 ' currency ='USD' planetype ='747-400' seatsmax ='385' seatsocc ='365' paymentsum ='189984.86 ' seatsmax_b ='31' seatsocc_b ='29' seatsmax_f ='21' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='UA' connid ='0941' fldate ='20180310' price ='879.82 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='450' paymentsum ='457604.00 ' seatsmax_b ='30' seatsocc_b ='28' seatsmax_f ='20' seatsocc_f ='19'  )
         ( mandt ='001' carrid ='SQ' connid ='0002' fldate ='20180310' price ='2320.04 ' currency ='SGD' planetype ='A340-600' seatsmax ='330' seatsocc ='330' paymentsum ='965113.64 ' seatsmax_b ='30' seatsocc_b ='30' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='LH' connid ='0401' fldate ='20180311' price ='666.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='248' paymentsum ='200059.74 ' seatsmax_b ='21' seatsocc_b ='21' seatsmax_f ='11' seatsocc_f ='11'  )
         ( mandt ='001' carrid ='JL' connid ='0407' fldate ='20180311' price ='1061.36 ' currency ='JPY' planetype ='A380-800' seatsmax ='475' seatsocc ='459' paymentsum ='565969.94 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='19'  )
         ( mandt ='001' carrid ='QF' connid ='0005' fldate ='20180311' price ='788.64 ' currency ='AUD' planetype ='747-400' seatsmax ='385' seatsocc ='372' paymentsum ='357301.38 ' seatsmax_b ='31' seatsocc_b ='30' seatsmax_f ='21' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='LH' connid ='2402' fldate ='20180312' price ='242.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='461' paymentsum ='129269.14 ' seatsmax_b ='30' seatsocc_b ='28' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='LH' connid ='0400' fldate ='20180312' price ='666.00 ' currency ='EUR' planetype ='A340-600' seatsmax ='330' seatsocc ='321' paymentsum ='270555.84 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='JL' connid ='0408' fldate ='20180312' price ='1061.36 ' currency ='JPY' planetype ='747-400' seatsmax ='385' seatsocc ='371' paymentsum ='479384.30 ' seatsmax_b ='31' seatsocc_b ='30' seatsmax_f ='21' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='DL' connid ='0106' fldate ='20180526' price ='611.01 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='459' paymentsum ='328149.43 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='LH' connid ='0402' fldate ='20180526' price ='666.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='458' paymentsum ='356909.40 ' seatsmax_b ='30' seatsocc_b ='30' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='AZ' connid ='0555' fldate ='20180528' price ='185.00 ' currency ='EUR' planetype ='737-800' seatsmax ='140' seatsocc ='134' paymentsum ='31899.55 ' seatsmax_b ='12' seatsocc_b ='11' seatsmax_f ='10' seatsocc_f ='10'  )
         ( mandt ='001' carrid ='AZ' connid ='0789' fldate ='20180528' price ='1030.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='252' paymentsum ='307063.60 ' seatsmax_b ='21' seatsocc_b ='20' seatsmax_f ='11' seatsocc_f ='10'  )
         ( mandt ='001' carrid ='LH' connid ='0401' fldate ='20180528' price ='666.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='251' paymentsum ='200878.92 ' seatsmax_b ='21' seatsocc_b ='21' seatsmax_f ='11' seatsocc_f ='11'  )
         ( mandt ='001' carrid ='SQ' connid ='0015' fldate ='20180528' price ='2320.04 ' currency ='SGD' planetype ='767-200' seatsmax ='260' seatsocc ='260' paymentsum ='720883.13 ' seatsmax_b ='21' seatsocc_b ='21' seatsmax_f ='11' seatsocc_f ='11'  )
         ( mandt ='001' carrid ='LH' connid ='2402' fldate ='20180528' price ='242.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='461' paymentsum ='128385.84 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='18'  )
         ( mandt ='001' carrid ='LH' connid ='0400' fldate ='20180528' price ='666.00 ' currency ='EUR' planetype ='A340-600' seatsmax ='330' seatsocc ='313' paymentsum ='263403.00 ' seatsmax_b ='30' seatsocc_b ='28' seatsmax_f ='20' seatsocc_f ='19'  )
         ( mandt ='001' carrid ='LH' connid ='0402' fldate ='20180528' price ='666.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='453' paymentsum ='350995.32 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='UA' connid ='0941' fldate ='20180528' price ='879.82 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='457' paymentsum ='471997.82 ' seatsmax_b ='30' seatsocc_b ='30' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='AA' connid ='0017' fldate ='20180528' price ='422.94 ' currency ='USD' planetype ='747-400' seatsmax ='385' seatsocc ='374' paymentsum ='193482.55 ' seatsmax_b ='31' seatsocc_b ='30' seatsmax_f ='21' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='UA' connid ='0941' fldate ='20180529' price ='879.82 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='459' paymentsum ='472728.09 ' seatsmax_b ='30' seatsocc_b ='30' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='SQ' connid ='0002' fldate ='20180529' price ='2320.04 ' currency ='SGD' planetype ='A340-600' seatsmax ='330' seatsocc ='330' paymentsum ='967526.53 ' seatsmax_b ='30' seatsocc_b ='30' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='LH' connid ='0401' fldate ='20180530' price ='666.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='243' paymentsum ='194805.00 ' seatsmax_b ='21' seatsocc_b ='20' seatsmax_f ='11' seatsocc_f ='11'  )
         ( mandt ='001' carrid ='JL' connid ='0407' fldate ='20180530' price ='1061.36 ' currency ='JPY' planetype ='A380-800' seatsmax ='475' seatsocc ='457' paymentsum ='564515.92 ' seatsmax_b ='30' seatsocc_b ='30' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='QF' connid ='0005' fldate ='20180530' price ='788.64 ' currency ='AUD' planetype ='747-400' seatsmax ='385' seatsocc ='372' paymentsum ='362088.56 ' seatsmax_b ='31' seatsocc_b ='31' seatsmax_f ='21' seatsocc_f ='21'  )
         ( mandt ='001' carrid ='LH' connid ='0400' fldate ='20180531' price ='666.00 ' currency ='EUR' planetype ='A340-600' seatsmax ='330' seatsocc ='319' paymentsum ='263749.32 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='18'  )
         ( mandt ='001' carrid ='LH' connid ='2402' fldate ='20180531' price ='242.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='452' paymentsum ='126691.84 ' seatsmax_b ='30' seatsocc_b ='28' seatsmax_f ='20' seatsocc_f ='19'  )
         ( mandt ='001' carrid ='JL' connid ='0408' fldate ='20180531' price ='1061.36 ' currency ='JPY' planetype ='747-400' seatsmax ='385' seatsocc ='369' paymentsum ='484966.83 ' seatsmax_b ='31' seatsocc_b ='31' seatsmax_f ='21' seatsocc_f ='21'  )
         ( mandt ='001' carrid ='LH' connid ='0401' fldate ='20180628' price ='666.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='249' paymentsum ='198707.76 ' seatsmax_b ='21' seatsocc_b ='21' seatsmax_f ='11' seatsocc_f ='11'  )
         ( mandt ='001' carrid ='LH' connid ='0402' fldate ='20180628' price ='666.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='452' paymentsum ='348124.86 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='18'  )
         ( mandt ='001' carrid ='LH' connid ='2402' fldate ='20180628' price ='242.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='458' paymentsum ='128281.78 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='19'  )
         ( mandt ='001' carrid ='UA' connid ='0941' fldate ='20180628' price ='879.82 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='458' paymentsum ='466578.17 ' seatsmax_b ='30' seatsocc_b ='29' seatsmax_f ='20' seatsocc_f ='19'  )
         ( mandt ='001' carrid ='LH' connid ='0400' fldate ='20180628' price ='666.00 ' currency ='EUR' planetype ='A340-600' seatsmax ='330' seatsocc ='320' paymentsum ='271747.98 ' seatsmax_b ='30' seatsocc_b ='30' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='DL' connid ='0106' fldate ='20180814' price ='611.01 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='462' paymentsum ='326805.22 ' seatsmax_b ='30' seatsocc_b ='30' seatsmax_f ='20' seatsocc_f ='18'  )
         ( mandt ='001' carrid ='LH' connid ='0402' fldate ='20180814' price ='666.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='461' paymentsum ='353739.24 ' seatsmax_b ='30' seatsocc_b ='28' seatsmax_f ='20' seatsocc_f ='19'  )
         ( mandt ='001' carrid ='AZ' connid ='0555' fldate ='20180816' price ='185.00 ' currency ='EUR' planetype ='737-800' seatsmax ='140' seatsocc ='128' paymentsum ='29775.75 ' seatsmax_b ='12' seatsocc_b ='10' seatsmax_f ='10' seatsocc_f ='9'  )
         ( mandt ='001' carrid ='AZ' connid ='0789' fldate ='20180816' price ='1030.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='249' paymentsum ='300739.40 ' seatsmax_b ='21' seatsocc_b ='19' seatsmax_f ='11' seatsocc_f ='10'  )
         ( mandt ='001' carrid ='SQ' connid ='0015' fldate ='20180816' price ='2320.04 ' currency ='SGD' planetype ='767-200' seatsmax ='260' seatsocc ='257' paymentsum ='712345.24 ' seatsmax_b ='21' seatsocc_b ='21' seatsmax_f ='11' seatsocc_f ='11'  )
         ( mandt ='001' carrid ='AA' connid ='0017' fldate ='20180816' price ='422.94 ' currency ='USD' planetype ='747-400' seatsmax ='385' seatsocc ='372' paymentsum ='193127.31 ' seatsmax_b ='31' seatsocc_b ='30' seatsmax_f ='21' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='UA' connid ='0941' fldate ='20180817' price ='879.82 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='461' paymentsum ='471663.48 ' seatsmax_b ='30' seatsocc_b ='28' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='SQ' connid ='0002' fldate ='20180817' price ='2320.04 ' currency ='SGD' planetype ='A340-600' seatsmax ='330' seatsocc ='330' paymentsum ='967271.37 ' seatsmax_b ='30' seatsocc_b ='30' seatsmax_f ='20' seatsocc_f ='20'  )
         ( mandt ='001' carrid ='LH' connid ='0401' fldate ='20180818' price ='666.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='58' paymentsum ='45161.46 ' seatsmax_b ='21' seatsocc_b ='5' seatsmax_f ='11' seatsocc_f ='2'  )
         ( mandt ='001' carrid ='JL' connid ='0407' fldate ='20180818' price ='1061.36 ' currency ='JPY' planetype ='A380-800' seatsmax ='475' seatsocc ='50' paymentsum ='62068.27 ' seatsmax_b ='30' seatsocc_b ='3' seatsmax_f ='20' seatsocc_f ='2'  )
         ( mandt ='001' carrid ='QF' connid ='0005' fldate ='20180818' price ='788.64 ' currency ='AUD' planetype ='747-400' seatsmax ='385' seatsocc ='261' paymentsum ='251875.97 ' seatsmax_b ='31' seatsocc_b ='21' seatsmax_f ='21' seatsocc_f ='14'  )
         ( mandt ='001' carrid ='LH' connid ='2402' fldate ='20180819' price ='242.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='115' paymentsum ='32147.28 ' seatsmax_b ='30' seatsocc_b ='7' seatsmax_f ='20' seatsocc_f ='5'  )
         ( mandt ='001' carrid ='JL' connid ='0408' fldate ='20180819' price ='1061.36 ' currency ='JPY' planetype ='747-400' seatsmax ='385' seatsocc ='144' paymentsum ='188624.82 ' seatsmax_b ='31' seatsocc_b ='12' seatsmax_f ='21' seatsocc_f ='8'  )
         ( mandt ='001' carrid ='LH' connid ='0400' fldate ='20180819' price ='666.00 ' currency ='EUR' planetype ='A340-600' seatsmax ='330' seatsocc ='150' paymentsum ='125860.68 ' seatsmax_b ='30' seatsocc_b ='14' seatsmax_f ='20' seatsocc_f ='9'  )
         ( mandt ='001' carrid ='LH' connid ='0402' fldate ='20181102' price ='666.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='37' paymentsum ='28544.76 ' seatsmax_b ='30' seatsocc_b ='2' seatsmax_f ='20' seatsocc_f ='2'  )
         ( mandt ='001' carrid ='DL' connid ='0106' fldate ='20181102' price ='611.01 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='167' paymentsum ='115554.37 ' seatsmax_b ='30' seatsocc_b ='10' seatsmax_f ='20' seatsocc_f ='6'  )
         ( mandt ='001' carrid ='AZ' connid ='0555' fldate ='20181104' price ='185.00 ' currency ='EUR' planetype ='737-800' seatsmax ='140' seatsocc ='0' paymentsum ='0.00 ' seatsmax_b ='12' seatsocc_b ='0' seatsmax_f ='10' seatsocc_f ='0'  )
         ( mandt ='001' carrid ='AA' connid ='0017' fldate ='20181104' price ='422.94 ' currency ='USD' planetype ='747-400' seatsmax ='385' seatsocc ='44' paymentsum ='23908.86 ' seatsmax_b ='31' seatsocc_b ='4' seatsmax_f ='21' seatsocc_f ='3'  )
         ( mandt ='001' carrid ='SQ' connid ='0015' fldate ='20181104' price ='2320.04 ' currency ='SGD' planetype ='767-200' seatsmax ='260' seatsocc ='91' paymentsum ='252049.18 ' seatsmax_b ='21' seatsocc_b ='7' seatsmax_f ='11' seatsocc_f ='4'  )
         ( mandt ='001' carrid ='AZ' connid ='0789' fldate ='20181104' price ='1030.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='104' paymentsum ='127647.90 ' seatsmax_b ='21' seatsocc_b ='8' seatsmax_f ='11' seatsocc_f ='5'  )
         ( mandt ='001' carrid ='SQ' connid ='0002' fldate ='20181105' price ='2320.04 ' currency ='SGD' planetype ='A340-600' seatsmax ='330' seatsocc ='51' paymentsum ='148714.53 ' seatsmax_b ='30' seatsocc_b ='5' seatsmax_f ='20' seatsocc_f ='3'  )
         ( mandt ='001' carrid ='UA' connid ='0941' fldate ='20181105' price ='879.82 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='129' paymentsum ='129747.30 ' seatsmax_b ='30' seatsocc_b ='8' seatsmax_f ='20' seatsocc_f ='5'  )
         ( mandt ='001' carrid ='LH' connid ='0401' fldate ='20181106' price ='666.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='0' paymentsum ='0.00 ' seatsmax_b ='21' seatsocc_b ='0' seatsmax_f ='11' seatsocc_f ='0'  )
         ( mandt ='001' carrid ='QF' connid ='0005' fldate ='20181106' price ='788.64 ' currency ='AUD' planetype ='747-400' seatsmax ='385' seatsocc ='102' paymentsum ='96979.13 ' seatsmax_b ='31' seatsocc_b ='8' seatsmax_f ='21' seatsocc_f ='5'  )
         ( mandt ='001' carrid ='JL' connid ='0407' fldate ='20181106' price ='1061.36 ' currency ='JPY' planetype ='A380-800' seatsmax ='475' seatsocc ='171' paymentsum ='209353.16 ' seatsmax_b ='30' seatsocc_b ='11' seatsmax_f ='20' seatsocc_f ='7'  )
         ( mandt ='001' carrid ='LH' connid ='0400' fldate ='20181107' price ='666.00 ' currency ='EUR' planetype ='A340-600' seatsmax ='330' seatsocc ='0' paymentsum ='0.00 ' seatsmax_b ='30' seatsocc_b ='0' seatsmax_f ='20' seatsocc_f ='0'  )
         ( mandt ='001' carrid ='LH' connid ='2402' fldate ='20181107' price ='242.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='58' paymentsum ='16272.08 ' seatsmax_b ='30' seatsocc_b ='3' seatsmax_f ='20' seatsocc_f ='3'  )
         ( mandt ='001' carrid ='JL' connid ='0408' fldate ='20181107' price ='1061.36 ' currency ='JPY' planetype ='747-400' seatsmax ='385' seatsocc ='74' paymentsum ='97305.44 ' seatsmax_b ='31' seatsocc_b ='6' seatsmax_f ='21' seatsocc_f ='4'  )
         ( mandt ='001' carrid ='DL' connid ='0106' fldate ='20190121' price ='611.01 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='11' paymentsum ='9073.51 ' seatsmax_b ='30' seatsocc_b ='1' seatsmax_f ='20' seatsocc_f ='1'  )
         ( mandt ='001' carrid ='LH' connid ='0402' fldate ='20190121' price ='666.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='45' paymentsum ='34945.02 ' seatsmax_b ='30' seatsocc_b ='3' seatsmax_f ='20' seatsocc_f ='2'  )
         ( mandt ='001' carrid ='SQ' connid ='0015' fldate ='20190123' price ='2320.04 ' currency ='SGD' planetype ='767-200' seatsmax ='260' seatsocc ='0' paymentsum ='0.00 ' seatsmax_b ='21' seatsocc_b ='0' seatsmax_f ='11' seatsocc_f ='0'  )
         ( mandt ='001' carrid ='AZ' connid ='0789' fldate ='20190123' price ='1030.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='18' paymentsum ='22268.60 ' seatsmax_b ='21' seatsocc_b ='1' seatsmax_f ='11' seatsocc_f ='1'  )
         ( mandt ='001' carrid ='AZ' connid ='0555' fldate ='20190123' price ='185.00 ' currency ='EUR' planetype ='737-800' seatsmax ='140' seatsocc ='23' paymentsum ='5392.75 ' seatsmax_b ='12' seatsocc_b ='1' seatsmax_f ='10' seatsocc_f ='2'  )
         ( mandt ='001' carrid ='AA' connid ='0017' fldate ='20190123' price ='422.94 ' currency ='USD' planetype ='747-400' seatsmax ='385' seatsocc ='40' paymentsum ='20347.70 ' seatsmax_b ='31' seatsocc_b ='3' seatsmax_f ='21' seatsocc_f ='2'  )
         ( mandt ='001' carrid ='SQ' connid ='0002' fldate ='20190124' price ='2320.04 ' currency ='SGD' planetype ='A340-600' seatsmax ='330' seatsocc ='16' paymentsum ='44660.79 ' seatsmax_b ='30' seatsocc_b ='1' seatsmax_f ='20' seatsocc_f ='1'  )
         ( mandt ='001' carrid ='UA' connid ='0941' fldate ='20190124' price ='879.82 ' currency ='USD' planetype ='A380-800' seatsmax ='475' seatsocc ='42' paymentsum ='43436.80 ' seatsmax_b ='30' seatsocc_b ='3' seatsmax_f ='20' seatsocc_f ='2'  )
         ( mandt ='001' carrid ='LH' connid ='0401' fldate ='20190125' price ='666.00 ' currency ='EUR' planetype ='767-200' seatsmax ='260' seatsocc ='10' paymentsum ='7645.68 ' seatsmax_b ='21' seatsocc_b ='1' seatsmax_f ='11' seatsocc_f ='0'  )
         ( mandt ='001' carrid ='JL' connid ='0407' fldate ='20190125' price ='1061.36 ' currency ='JPY' planetype ='A380-800' seatsmax ='475' seatsocc ='3' paymentsum ='3077.94 ' seatsmax_b ='30' seatsocc_b ='0' seatsmax_f ='20' seatsocc_f ='0'  )
         ( mandt ='001' carrid ='QF' connid ='0005' fldate ='20190125' price ='788.64 ' currency ='AUD' planetype ='747-400' seatsmax ='385' seatsocc ='31' paymentsum ='29629.20 ' seatsmax_b ='31' seatsocc_b ='2' seatsmax_f ='21' seatsocc_f ='2'  )
         ( mandt ='001' carrid ='LH' connid ='0400' fldate ='20190126' price ='666.00 ' currency ='EUR' planetype ='A340-600' seatsmax ='330' seatsocc ='0' paymentsum ='0.00 ' seatsmax_b ='30' seatsocc_b ='0' seatsmax_f ='20' seatsocc_f ='0'  )
         ( mandt ='001' carrid ='LH' connid ='2402' fldate ='20190126' price ='242.00 ' currency ='EUR' planetype ='A380-800' seatsmax ='475' seatsocc ='37' paymentsum ='10660.10 ' seatsmax_b ='30' seatsocc_b ='2' seatsmax_f ='20' seatsocc_f ='2'  )
         ( mandt ='001' carrid ='JL' connid ='0408' fldate ='20190126' price ='1061.36 ' currency ='JPY' planetype ='747-400' seatsmax ='385' seatsocc ='34' paymentsum ='44577.10 ' seatsmax_b ='31' seatsocc_b ='3' seatsmax_f ='21' seatsocc_f ='2'  )
    ).
  ENDMETHOD.

  METHOD get_flights_by_carrier_id.
    LOOP AT mt_flights ASSIGNING FIELD-SYMBOL(<flight>) WHERE carrid = iv_carrid.
      APPEND <flight> TO rt_flights.
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.


CLASS ltcl_flight_dao_mock DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.


  PRIVATE SECTION.
    DATA lo_flight_dao TYPE REF TO zcl_flight_dao.

    " Test classes
    METHODS test_flight_count_found FOR TESTING.
    METHODS test_flight_no_data_found FOR TESTING.
    METHODS test_flight_avg_price FOR TESTING.
    METHODS setup.
ENDCLASS.


CLASS ltcl_flight_dao_mock IMPLEMENTATION.

  METHOD setup.
    lo_flight_dao = NEW lcl_flight_dao_mock( ).

    " Inject local "mock" object instead of expected zcl_flight_dao object, possible because inheritance is used
    zcl_flight_dao=>set_instance( lo_flight_dao ).
  ENDMETHOD.

  METHOD test_flight_count_found.
    DATA(lt_flights) = lo_flight_dao->get_flights_by_carrier_id( 'AA' ).
    cl_abap_unit_assert=>assert_equals( msg = 'Corret number of flights found' exp = 6 act = lines( lt_flights ) ).
  ENDMETHOD.

  METHOD test_flight_no_data_found.
    DATA(lt_flights) = lo_flight_dao->get_flights_by_carrier_id( 'NAN' ).
    cl_abap_unit_assert=>assert_equals( msg = 'No flights found' exp = 0 act = lines( lt_flights ) ).
  ENDMETHOD.

  METHOD test_flight_avg_price.
    DATA(lt_flights) = lo_flight_dao->get_flights_by_carrier_id( 'AA' ).
    DATA(lv_avg_price) = lo_flight_dao->calculate_avg_price( lt_flights ).

    cl_abap_unit_assert=>assert_equals( msg = 'Test avarage price for AA flights' exp = '2537.64' act = '' && lv_avg_price ).

  ENDMETHOD.

ENDCLASS.
