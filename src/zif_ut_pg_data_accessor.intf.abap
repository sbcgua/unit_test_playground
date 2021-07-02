interface zif_ut_pg_data_accessor
  public .

  types:
    tt_sflight type standard table of sflight with default key.

  methods get_flights
    importing
      i_carrid type sflight-carrid
      i_connid type sflight-connid
    returning
      value(rt_flights) type tt_sflight.

endinterface.
