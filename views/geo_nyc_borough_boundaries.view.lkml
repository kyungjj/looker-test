view: geo_nyc_borough_boundaries {
  sql_table_name: `kellysong_looker_test.geo_nyc_borough_boundaries` ;;

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
  dimension: borough_area {
    type: number
    sql: ${TABLE}.borough_area ;;
  }
  dimension: borough_code {
    type: string
    sql: ${TABLE}.borough_code ;;
  }
  dimension: borough_geom {
    type: string
    sql: ${TABLE}.borough_geom ;;
  }
  dimension: borough_len {
    type: number
    sql: ${TABLE}.borough_len ;;
  }
  dimension: borough_name {
    type: string
    sql: ${TABLE}.borough_name ;;
  }
  measure: count {
    type: count
    drill_fields: [borough_name]
  }
}
