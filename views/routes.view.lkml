view: routes {
  sql_table_name: `kellysong_looker_test.routes` ;;
  drill_fields: [route_id]

  dimension: route_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.route_id ;;
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
  dimension: route_describe {
    type: string
    sql: ${TABLE}.route_describe ;;
  }
  dimension: route_long_name {
    type: string
    sql: ${TABLE}.route_long_name ;;
  }
  dimension: route_short_name {
    type: string
    sql: ${TABLE}.route_short_name ;;
  }
  dimension: route_type {
    type: string
    sql: ${TABLE}.route_type ;;
  }
  measure: count {
    type: count
    drill_fields: [route_id, route_long_name, route_short_name, trips.count]
  }
}
