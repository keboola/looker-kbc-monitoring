view: s3_data_transfer {
  sql_table_name: WORKSPACE_334794."s3-data-transfer" ;;

  dimension: organization_id {
    type: string
    sql: ${TABLE}.ORGANIZATION_ID ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}.ORGANIZATION_NAME ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.PROJECT_ID ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.PROJECT_NAME ;;
  }

  dimension: project_region {
    type: string
    sql: ${TABLE}.PROJECT_REGION ;;
  }

  dimension_group: date {
    type: time
    datatype: date
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
    sql: ${TABLE}.DATE ;;
  }

  dimension: date {
    type: date
    sql: ${TABLE}.DATE ;;
  }

  dimension: operation {
    type: string
    sql: ${TABLE}.OPERATION ;;
  }

  dimension: remote_access {
    type: string
    sql: ${TABLE}.REMOTE_ACCESS ;;
  }

  dimension: storage_bucket_id {
    type: string
    sql: ${TABLE}.STORAGE_BUCKET_ID ;;
  }

  dimension: requester_type {
    type: string
    sql: ${TABLE}.REQUESTER_TYPE ;;
  }

  dimension: user_agent_1 {
    type: string
    sql: ${TABLE}.USER_AGENT_1 ;;
  }

  dimension: REMOTE_IP{
    type: string
    sql: ${TABLE}.REMOTE_IP ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.ID ;;
  }

  dimension: bytes_sent {
    type: number
    sql: ${TABLE}.BYTES_SENT ;;
    value_format: "0.000,,\" M\""
  }


  measure: sum_giga_bytes_sent  {
    type: sum
    sql: ${bytes_sent} / (1000 * 1000 * 1000);;
  }


}
