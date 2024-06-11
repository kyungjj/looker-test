view: station_complexes {
  sql_table_name: `kellysong_looker_test.station_complexes` ;;

  dimension_group: _partitiondate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }
  dimension_group: _partitiontime {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }
  dimension: complex_id {
    type: string
    sql: ${TABLE}.complex_id ;;
  }
  dimension: complex_name {
    type: string
    sql: ${TABLE}.complex_name ;;
  }
  measure: count {
    type: count
    drill_fields: [complex_name]
  }
}
