view: oauth_credentials {
  sql_table_name: WORKSPACE_334794."oauth_credentials" ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: app_key {
    type: string
    sql: ${TABLE}.APP_KEY ;;
  }

  dimension: authorized_for {
    type: string
    sql: ${TABLE}.AUTHORIZED_FOR ;;
  }

  dimension: component_id {
    type: string
    sql: ${TABLE}.COMPONENT_ID ;;
  }

  dimension: creator_name {
    type: string
    sql: ${TABLE}.CREATOR_NAME ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.PROJECT_ID ;;
  }
}
