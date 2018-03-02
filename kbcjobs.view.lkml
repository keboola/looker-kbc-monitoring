view: kbcjobs {
  sql_table_name: WORKSPACE_334794."kbc-jobs" ;;

  dimension: backend {
    type: string
    sql: ${TABLE}.BACKEND ;;
  }

  dimension: backend_worker {
    type: string
    sql: ${TABLE}.BACKEND_WORKER ;;
  }

  dimension: component {
    type: string
    sql: ${TABLE}.COMPONENT ;;
  }

  dimension: component_config {
    type: string
    sql: ${TABLE}.COMPONENT_CONFIG ;;
  }

  dimension: component_type {
    type: string
    sql: ${TABLE}.COMPONENT_TYPE ;;
    drill_fields: [component]
  }

  dimension: credits {
    type: number
    sql: ${TABLE}.CREDITS ;;
  }

  dimension_group: job_created {
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
    sql: ${TABLE}.JOB_CREATED ;;
  }

  dimension_group: job_finish {
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
    sql: ${TABLE}.JOB_FINISH ;;
  }

  dimension: job_id {
    type: string
    sql: ${TABLE}.JOB_ID ;;
  }

  dimension: job_runtime_sec {
    type: number
    sql: ${TABLE}.JOB_RUNTIME_SEC ;;
  }

  dimension_group: job_start {
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
    sql: ${TABLE}.JOB_START ;;
  }

  dimension: job_status {
    type: string
    sql: ${TABLE}.JOB_STATUS ;;
  }

  dimension: job_totaltime_sec {
    type: number
    sql: ${TABLE}.JOB_TOTALTIME_SEC ;;
  }

  dimension: job_waittime_sec {
    type: number
    sql: ${TABLE}.JOB_WAITTIME_SEC ;;
  }

  dimension: job_waittime_sec_tier {
    type: tier
    tiers: [0, 2, 5, 10, 30, 60, 300, 1800]
    sql: ${job_waittime_sec} ;;
    style: relational
  }

  dimension: network_mb {
    type: number
    sql: ${TABLE}.NETWORK_MB ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.PROJECT_ID ;;
  }

  dimension: project_region {
    type: string
    sql: ${TABLE}.PROJECT_REGION ;;
  }

  dimension: run_by_token {
    type: string
    sql: ${TABLE}.RUN_BY_TOKEN ;;
  }

  dimension: run_by_token_desc {
    type: string
    sql: ${TABLE}.RUN_BY_TOKEN_DESC ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}.RUN_ID ;;
  }

  dimension: storage_mb {
    type: number
    sql: ${TABLE}.STORAGE_MB ;;
  }

  measure: count {
    type: count
    drill_fields: [job_id, project_region, project_id, component,job_waittime_sec, job_runtime_sec]
  }

  measure: average_waittime_sec {
    type: average
    sql: ${job_waittime_sec} ;;
    drill_fields: [job_id, project_id, component, job_waittime_sec]
  }

  measure: median_runtime_sec {
    type: median
    sql: ${job_runtime_sec} ;;
    drill_fields: [job_id, project_id, component, job_waittime_sec]
  }

  measure: total_runtime_sec {
    type: sum
    sql: ${job_runtime_sec} ;;
    drill_fields: [job_id, project_id, component, job_waittime_sec]
  }

  measure: total_credits {
    type:  sum
    sql: ${credits} ;;
    drill_fields: [job_id, project_id, component, job_waittime_sec]
  }
}
