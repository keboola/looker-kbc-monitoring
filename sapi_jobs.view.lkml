view: sapi_jobs {
  sql_table_name: WORKSPACE_334794."sapi-jobs" ;;

  dimension: id {
    type: string
    sql: ${TABLE}."id" ;;
  }


  dimension: projectId {
    type: string
    sql:  ${TABLE}."idProject" ;;
  }


  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      minute,
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."createdTime" ;;
  }



  measure: count {
    type: count
    drill_fields: [id, projectId]
  }

}
