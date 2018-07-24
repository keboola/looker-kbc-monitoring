- dashboard: performance_honeypot_comparison
  title: Performance Honeypot Comparison
  layout: newspaper
  elements:
  - title: EU
    name: EU
    model: kbc_monitoring
    explore: kbcjobs
    type: looker_area
    fields:
    - kbcjobs.project_region
    - kbcjobs.average_waittime_sec
    - kbcjobs.average_runtime_sec
    - kbcjobs.max_runtime_sec
    - kbcjobs.job_start_hour
    filters:
      kbcjobs.project_region: eu-central-1
      kbcjobs.component: orchestrator
      kbcjobs.component_config: '810149'
    sorts:
    - kbcjobs.job_start_hour desc
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    listen:
      Untitled Filter: kbcjobs.job_start_date
    row: 3
    col: 0
    width: 24
    height: 7
  - title: US
    name: US
    model: kbc_monitoring
    explore: kbcjobs
    type: looker_area
    fields:
    - kbcjobs.project_region
    - kbcjobs.average_waittime_sec
    - kbcjobs.average_runtime_sec
    - kbcjobs.max_runtime_sec
    - kbcjobs.job_start_hour
    filters:
      kbcjobs.project_region: us-east-1
      kbcjobs.component: orchestrator
      kbcjobs.component_config: '373206461'
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    listen:
      Untitled Filter: kbcjobs.job_start_date
    row: 10
    col: 0
    width: 24
    height: 7
  - name: ''
    type: text
    title_text: ''
    body_text: |-
      Srovnání performance transformací v regionech.
      - EU https://connection.eu-central-1.keboola.com/admin/projects/107/orchestrations/810149
      - US https://connection.keboola.com/admin/projects/4481/orchestrations/373206461
    row: 0
    col: 0
    width: 8
    height: 3
  filters:
  - name: Untitled Filter
    title: Untitled Filter
    type: date_filter
    default_value: 14 days
    allow_multiple_values: true
    required: false
