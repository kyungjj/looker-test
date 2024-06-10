view: subway_ridership_2013_present {
  sql_table_name: `kellysong_looker_test.subway_ridership_2013_present` ;;

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
  dimension: change_2018_percent {
    type: number
    sql: ${TABLE}.change_2018_percent ;;
  }
  dimension: change_2018_raw {
    type: number
    sql: ${TABLE}.change_2018_raw ;;
  }
  dimension: rank_ridership_2018 {
    type: number
    sql: ${TABLE}.rank_ridership_2018 ;;
  }
  dimension: ridership_2013 {
    type: number
    sql: ${TABLE}.ridership_2013 ;;
  }
  dimension: ridership_2014 {
    type: number
    sql: ${TABLE}.ridership_2014 ;;
  }
  dimension: ridership_2015 {
    type: number
    sql: ${TABLE}.ridership_2015 ;;
  }
  dimension: ridership_2016 {
    type: number
    sql: ${TABLE}.ridership_2016 ;;
  }
  dimension: ridership_2017 {
    type: number
    sql: ${TABLE}.ridership_2017 ;;
  }
  dimension: ridership_2018 {
    type: number
    sql: ${TABLE}.ridership_2018 ;;
  }
  dimension: routes {
    type: string
    sql: ${TABLE}.routes ;;
  }
  dimension: station_name {
    type: string
    sql: ${TABLE}.station_name ;;
  }
  measure: count {
    type: count
    drill_fields: [station_name]
  }
}
