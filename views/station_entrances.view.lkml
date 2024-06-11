view: station_entrances {
  sql_table_name: `kellysong_looker_test.station_entrances` ;;

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
  dimension: ada_compliant {
    type: yesno
    sql: ${TABLE}.ada_compliant ;;
  }
  dimension: ada_notes {
    type: string
    sql: ${TABLE}.ada_notes ;;
  }
  dimension: corner {
    type: string
    sql: ${TABLE}.corner ;;
  }
  dimension: division {
    type: string
    sql: ${TABLE}.division ;;
  }
  dimension: east_west_street {
    type: string
    sql: ${TABLE}.east_west_street ;;
  }
  dimension: entrance_geom {
    type: string
    sql: ${TABLE}.entrance_geom ;;
  }
  dimension: entrance_lat {
    type: number
    sql: ${TABLE}.entrance_lat ;;
  }
  dimension: entrance_lon {
    type: number
    sql: ${TABLE}.entrance_lon ;;
  }
  dimension: entrance_type {
    type: string
    sql: ${TABLE}.entrance_type ;;
  }
  dimension: entry {
    type: yesno
    sql: ${TABLE}.entry ;;
  }
  dimension: exit_only {
    type: yesno
    sql: ${TABLE}.exit_only ;;
  }
  dimension: free_crossover {
    type: yesno
    sql: ${TABLE}.free_crossover ;;
  }
  dimension: line {
    type: string
    sql: ${TABLE}.line ;;
  }
  dimension: north_south_street {
    type: string
    sql: ${TABLE}.north_south_street ;;
  }
  dimension: route_1 {
    type: string
    sql: ${TABLE}.route_1 ;;
  }
  dimension: route_10 {
    type: string
    sql: ${TABLE}.route_10 ;;
  }
  dimension: route_11 {
    type: string
    sql: ${TABLE}.route_11 ;;
  }
  dimension: route_2 {
    type: string
    sql: ${TABLE}.route_2 ;;
  }
  dimension: route_3 {
    type: string
    sql: ${TABLE}.route_3 ;;
  }
  dimension: route_4 {
    type: string
    sql: ${TABLE}.route_4 ;;
  }
  dimension: route_5 {
    type: string
    sql: ${TABLE}.route_5 ;;
  }
  dimension: route_6 {
    type: string
    sql: ${TABLE}.route_6 ;;
  }
  dimension: route_7 {
    type: string
    sql: ${TABLE}.route_7 ;;
  }
  dimension: route_8 {
    type: string
    sql: ${TABLE}.route_8 ;;
  }
  dimension: route_9 {
    type: string
    sql: ${TABLE}.route_9 ;;
  }
  dimension: staff {
    type: string
    sql: ${TABLE}.staff ;;
  }
  dimension: staff_hours {
    type: string
    sql: ${TABLE}.staff_hours ;;
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
  dimension: vending {
    type: yesno
    sql: ${TABLE}.vending ;;
  }
  measure: count {
    type: count
    drill_fields: [station_name]
  }
}
