view: stations {
  sql_table_name: `kellysong_looker_test.stations` ;;
  drill_fields: [station_id]

  dimension: station_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.station_id ;;
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
  dimension: borough_name {
    type: string
    sql: ${TABLE}.borough_name ;;
  }
  dimension: complex_id {
    type: string
    sql: ${TABLE}.complex_id ;;
  }
  dimension: daytime_routes {
    type: string
    sql: ${TABLE}.daytime_routes ;;
  }
  dimension: division {
    type: string
    sql: ${TABLE}.division ;;
  }
  dimension: gtfs_stop_id {
    type: string
    sql: ${TABLE}.gtfs_stop_id ;;
  }
  dimension: line {
    type: string
    sql: ${TABLE}.line ;;
  }
  dimension: north_direction_label {
    type: string
    sql: ${TABLE}.north_direction_label ;;
  }
  dimension: south_direction_label {
    type: string
    sql: ${TABLE}.south_direction_label ;;
  }
  dimension: station_geom {
    type: string
    sql: ${TABLE}.station_geom ;;
  }
  dimension: station_lat {
    type: number
    sql: ${TABLE}.station_lat ;;
  }
  dimension: station_lon {
    type: number
    sql: ${TABLE}.station_lon ;;
  }
  dimension: station_name {
    type: string
    sql: ${TABLE}.station_name ;;
  }
  dimension: structure {
    type: string
    sql: ${TABLE}.structure ;;
  }
  measure: count {
    type: count
    drill_fields: [station_id, station_name, borough_name]
  }
}
