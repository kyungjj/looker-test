view: stop_times {
  sql_table_name: `kellysong_looker_test.stop_times` ;;

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
  dimension: arrival_time {
    type: string
    sql: ${TABLE}.arrival_time ;;
  }
  dimension: departure_time {
    type: string
    sql: ${TABLE}.departure_time ;;
  }
  dimension: dropoff_type {
    type: string
    sql: ${TABLE}.dropoff_type ;;
  }
  dimension: pickup_type {
    type: string
    sql: ${TABLE}.pickup_type ;;
  }
  dimension: shape_dist_traveled {
    type: string
    sql: ${TABLE}.shape_dist_traveled ;;
  }
  dimension: stop_headsign {
    type: string
    sql: ${TABLE}.stop_headsign ;;
  }
  dimension: stop_id {
    type: string
    sql: ${TABLE}.stop_id ;;
  }
  dimension: stop_sequence {
    type: string
    sql: ${TABLE}.stop_sequence ;;
  }
  dimension: trip_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.trip_id ;;
  }
  measure: count {
    type: count
    drill_fields: [trips.trip_id]
  }
}
