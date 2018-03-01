view: syrupjobs {
  sql_table_name: WORKSPACE_334794."syrup-jobs" ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: component {
    type: string
    sql: ${TABLE}."component" ;;
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

  dimension_group: end {
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
    sql: ${TABLE}."endTime" ;;
  }

  dimension: params_component {
    type: string
    sql: ${TABLE}."params_component" ;;
  }

  dimension: process_host {
    type: string
    sql: ${TABLE}."process_host" ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}."project_id" ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}."project_name" ;;
  }

  dimension: run_id {
    type: string
    sql: ${TABLE}."runId" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."startTime" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: token_description {
    type: string
    sql: ${TABLE}."token_description" ;;
  }

  dimension: token_id {
    type: string
    sql: ${TABLE}."token_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, project_id, project_name]
  }
}
