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
      minute2,
      minute3,
      minute4,
      minute5,
      minute10,
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
    drill_fields: [projectId, count]
  }

}
