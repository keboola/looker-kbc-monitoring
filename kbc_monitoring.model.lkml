connection: "kbc_monitoring"

# include all the views
include: "*.view"

# include dashboards
include: "*.dashboard"



datagroup: kbc_monitoring_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: kbc_monitoring_default_datagroup


explore: kbcjobs {}
