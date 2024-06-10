connection: "kellysong-looker-test"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: kellysong_looker_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: kellysong_looker_test_default_datagroup

explore: subway_ridership_2013_present {}

explore: stop_times {
  join: trips {
    type: left_outer
    sql_on: ${stop_times.trip_id} = ${trips.trip_id} ;;
    relationship: many_to_one
  }

  join: routes {
    type: left_outer
    sql_on: ${trips.route_id} = ${routes.route_id} ;;
    relationship: many_to_one
  }
}

explore: routes {}

explore: station_complexes {}

explore: stations {}

explore: trips {
  join: routes {
    type: left_outer
    sql_on: ${trips.route_id} = ${routes.route_id} ;;
    relationship: many_to_one
  }
}

explore: geo_nyc_borough_boundaries {}

explore: station_entrances {}
