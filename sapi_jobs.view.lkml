view: sapi_jobs {
  sql_table_name: WORKSPACE_334794.SAPI_JOBS ;;

  dimension: JOB_ID {
    type: string
    sql: ${TABLE}.JOB_ID ;;
  }


  dimension: PROJECT_ID {
    type: string
    sql:  ${TABLE}.PROJECT_ID ;;
  }

  dimension: PROJECT_REGION {
    type: string
    sql:  ${TABLE}.PROJECT_REGION ;;
  }

  dimension_group: JOB_CREATED {
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
    sql: ${TABLE}.JOB_CREATED ;;
  }



  measure: count {
    type: count
    drill_fields: [PROJECT_REGION, PROJECT_ID, count]
  }

}
