view: trips {
  sql_table_name: `kellysong_looker_test.trips` ;;
  drill_fields: [trip_id]

  dimension: trip_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.trip_id ;;
  }
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
  dimension: block_id {
    type: string
    sql: ${TABLE}.block_id ;;
  }
  dimension: direction_id {
    type: string
    sql: ${TABLE}.direction_id ;;
  }
  dimension: route_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.route_id ;;
  }
  dimension: service_id {
    type: string
    sql: ${TABLE}.service_id ;;
  }
  dimension: shape_id {
    type: string
    sql: ${TABLE}.shape_id ;;
  }
  dimension: trip_headsign {
    type: string
    sql: ${TABLE}.trip_headsign ;;
  }
  measure: count {
    type: count
    drill_fields: [trip_id, routes.route_id, routes.route_long_name, routes.route_short_name, stop_times.count]
  }
}
