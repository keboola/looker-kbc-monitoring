view: jobs_jobs {
  sql_table_name: WORKSPACE_334794.jobs_jobs ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: component {
    type: string
    sql: ${TABLE}.component ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.createdTime ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: token_description {
    type: string
    sql: ${TABLE}.token_description ;;
  }

  dimension: token_id {
    type: string
    sql: ${TABLE}.token_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, project_name]
  }
}
