report zcl_ut_pg_demo.

parameters:
  p_carrid type sflight-carrid obligatory,
  p_connid type sflight-connid obligatory.

form main.
  data lo_stats type ref to zcl_ut_pg_flight_stats.
  data ls_avg type zcl_ut_pg_flight_stats=>ty_average_payment.

  create object lo_stats.

  ls_avg = lo_stats->get_average_payments(
    i_carrid = p_carrid
    i_connid = p_connid ).

  write: / 'Average payments are', ls_avg-average, 'over', ls_avg-count, 'flights'.

endform.

start-of-selection.
  perform main.
