view: sapi_jobs {
  sql_table_name: WORKSPACE_334794.SAPI_JOBS ;;

  dimension: JOB_ID {
    type: string
    sql: ${TABLE}.JOB_ID ;;
  }

  dimension: RUN_ID {
    type: string
    sql:  ${TABLE}.RUN_ID ;;
  }

  dimension: PROJECT_ID {
    type: string
    sql:  ${TABLE}.PROJECT_ID ;;
  }

  dimension: PROJECT_REGION {
    type: string
    sql:  ${TABLE}.PROJECT_REGION ;;
  }

  dimension: TABLE_ID {
    type: string
    sql:  ${TABLE}.TABLE_ID ;;
  }

  dimension: OPERATION_NAME {
    type: string
    sql:  ${TABLE}.OPERATION_NAME ;;
  }

  dimension: JOB_STATUS {
    type: string
    sql:  ${TABLE}.JOB_STATUS ;;
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

  dimension_group: JOB_START {
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
    sql: ${TABLE}.JOB_START ;;
  }

  dimension_group: JOB_FINISH {
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
    sql: ${TABLE}.JOB_FINISH ;;
  }

  dimension: JOB_WAITTIME_SEC {
    type: number
    sql: ${TABLE}.JOB_WAITTIME_SEC ;;
  }

  dimension: JOB_RUNTIME_SEC {
    type: number
    sql: ${TABLE}.JOB_RUNTIME_SEC ;;
  }

  dimension: JOB_TOTALTIME_SEC {
    type: number
    sql: ${TABLE}.JOB_TOTALTIME_SEC ;;
  }

  measure: count {
    type: count
    drill_fields: [PROJECT_REGION, PROJECT_ID, count]
  }

}
