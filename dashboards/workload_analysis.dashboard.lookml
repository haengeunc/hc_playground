- dashboard: workload_analysis
  title: Workload Analysis
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Customers distribution based on total revenue
    name: Customers distribution based on total revenue
    model: "@{model_name}"
    explore: "@{explore_name}"
    type: looker_column
    fields: [order_items_derived.customer_lifetime_revenue_group, order_items_derived.count]
    fill_fields: [order_items_derived.customer_lifetime_revenue_group]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_datetime_label: ''
    defaults_version: 1
    listen: {}
    row: 10
    col: 0
    width: 10
    height: 7



  - title: Workloads by Migration Category
    name: Workloads by Migration Category
    model: tim
    explore: mat_plan_dashboard
    type: looker_pie
    fields: [mat_plan_dashboard.tipologia, mat_plan_dashboard.workloads]
    sorts: [mat_plan_dashboard.workloads desc]
    limit: 500
    total: true
    value_labels: labels
    label_type: labVal
    inner_radius: 50
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    series_colors:
      GreenField: "#7CB342"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    font_size: 12
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen:
      Nome Sistema: mat_plan_dashboard.nome_sistema
      Responsabile IA: mat_plan_dashboard.responsabile_ia
      Programma: mat_plan_dashboard.programma
      Codice App: mat_plan_dashboard.codice_app
      Planned Go Live Date Date: mat_plan_dashboard.go_live_gcp_pianificato_data_date
    row: 8
    col: 0
    width: 8
    height: 8
  - title: Initiatives
    name: Initiatives
    model: tim
    explore: mat_plan_dashboard
    type: single_value
    fields: [mat_plan_dashboard.initiatives]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    single_value_title: ''
    defaults_version: 1
    listen:
      Nome Sistema: mat_plan_dashboard.nome_sistema
      Responsabile IA: mat_plan_dashboard.responsabile_ia
      Programma: mat_plan_dashboard.programma
      Codice App: mat_plan_dashboard.codice_app
      Planned Go Live Date Date: mat_plan_dashboard.go_live_gcp_pianificato_data_date
    row: 5
    col: 0
    width: 4
    height: 3
  - title: Workloads
    name: Workloads
    model: tim
    explore: mat_plan_dashboard
    type: single_value
    fields: [mat_plan_dashboard.workloads]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#1A73E8"
    defaults_version: 1
    listen:
      Nome Sistema: mat_plan_dashboard.nome_sistema
      Responsabile IA: mat_plan_dashboard.responsabile_ia
      Programma: mat_plan_dashboard.programma
      Codice App: mat_plan_dashboard.codice_app
      Planned Go Live Date Date: mat_plan_dashboard.go_live_gcp_pianificato_data_date
    row: 5
    col: 4
    width: 4
    height: 3
  - title: Breakdown by Status and Type - Top 10 Workloads
    name: Breakdown by Status and Type - Top 10 Workloads
    model: tim
    explore: mat_plan_dashboard
    type: looker_bar
    fields: [mat_plan_dashboard.programma, mat_plan_dashboard.workloads]
    sorts: [mat_plan_dashboard.workloads desc]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    defaults_version: 1
    listen:
      Nome Sistema: mat_plan_dashboard.nome_sistema
      Responsabile IA: mat_plan_dashboard.responsabile_ia
      Programma: mat_plan_dashboard.programma
      Codice App: mat_plan_dashboard.codice_app
      Planned Go Live Date Date: mat_plan_dashboard.go_live_gcp_pianificato_data_date
    row: 5
    col: 8
    width: 16
    height: 11
  - title: Migration Workload over Quarters
    name: Migration Workload over Quarters
    model: tim
    explore: mat_plan_dashboard
    type: looker_column
    fields: [mat_plan_dashboard.go_live_gcp_pianificato_data_quarter, mat_plan_dashboard.workloads,
      mat_plan_dashboard.tipologia]
    pivots: [mat_plan_dashboard.tipologia]
    fill_fields: [mat_plan_dashboard.go_live_gcp_pianificato_data_quarter]
    filters:
      mat_plan_dashboard.go_live_gcp_pianificato_data_quarter: '2020,2021,2022,2023'
    sorts: [mat_plan_dashboard.tipologia, mat_plan_dashboard.go_live_gcp_pianificato_data_quarter
        desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      GreenField - mat_plan_dashboard.workloads: "#7CB342"
      Replatforming - mat_plan_dashboard.workloads: "#1A73E8"
    defaults_version: 1
    hidden_fields: []
    listen:
      Nome Sistema: mat_plan_dashboard.nome_sistema
      Responsabile IA: mat_plan_dashboard.responsabile_ia
      Programma: mat_plan_dashboard.programma
      Codice App: mat_plan_dashboard.codice_app
      Planned Go Live Date Date: mat_plan_dashboard.go_live_gcp_pianificato_data_date
    row: 16
    col: 0
    width: 24
    height: 11
  - title: Workload by Status and Migration Type
    name: Workload by Status and Migration Type
    model: tim
    explore: mat_plan_dashboard
    type: looker_grid
    fields: [mat_plan_dashboard.stato, mat_plan_dashboard.tipologia, mat_plan_dashboard.go_live_gcp_pianificato_data_year,
      mat_plan_dashboard.workloads]
    pivots: [mat_plan_dashboard.stato, mat_plan_dashboard.tipologia]
    fill_fields: [mat_plan_dashboard.go_live_gcp_pianificato_data_year]
    filters:
      mat_plan_dashboard.go_live_gcp_pianificato_data_year: '2020,2021,2022,2023'
    sorts: [mat_plan_dashboard.go_live_gcp_pianificato_data_year, mat_plan_dashboard.stato,
      mat_plan_dashboard.tipologia]
    limit: 500
    total: true
    row_total: right
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      mat_plan_dashboard.workloads:
        is_active: true
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    truncate_column_names: false
    listen:
      Nome Sistema: mat_plan_dashboard.nome_sistema
      Responsabile IA: mat_plan_dashboard.responsabile_ia
      Programma: mat_plan_dashboard.programma
      Codice App: mat_plan_dashboard.codice_app
      Planned Go Live Date Date: mat_plan_dashboard.go_live_gcp_pianificato_data_date
    row: 27
    col: 0
    width: 24
    height: 8
  - title: Plan Evolution
    name: Plan Evolution
    model: tim
    explore: view_tracking
    type: looker_area
    fields: [view_tracking.stato, view_tracking.total_workload_source, view_tracking.date_date]
    pivots: [view_tracking.stato]
    fill_fields: [view_tracking.date_date]
    filters:
      view_tracking.stato: "-2.DA VALUTARE"
    sorts: [view_tracking.stato, view_tracking.date_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    defaults_version: 1
    row: 35
    col: 0
    width: 24
    height: 7
  - title: Delivery plan
    name: Delivery plan
    model: tim
    explore: mat_plan_dashboard
    type: looker_column
    fields: [mat_plan_dashboard.go_live_gcp_pianificato_data_month, mat_plan_dashboard.workloads,
      mat_plan_dashboard.stato]
    pivots: [mat_plan_dashboard.stato]
    fill_fields: [mat_plan_dashboard.go_live_gcp_pianificato_data_month]
    filters:
      mat_plan_dashboard.go_live_gcp_pianificato_data_month: 2 years,before 2023/12/31
    sorts: [mat_plan_dashboard.go_live_gcp_pianificato_data_month desc, mat_plan_dashboard.stato]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#ffffff"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: 0.COMPLETATO - mat_plan_dashboard.workloads,
            id: 0.COMPLETATO - mat_plan_dashboard.workloads, name: 0.COMPLETATO},
          {axisId: 1.RUNNING - mat_plan_dashboard.workloads, id: 1.RUNNING - mat_plan_dashboard.workloads,
            name: 1.RUNNING}, {axisId: 1.RUNNING (OK NOOVLE) - mat_plan_dashboard.workloads,
            id: 1.RUNNING (OK NOOVLE) - mat_plan_dashboard.workloads, name: 1.RUNNING
              (OK NOOVLE)}, {axisId: 2.DA VALUTARE - mat_plan_dashboard.workloads,
            id: 2.DA VALUTARE - mat_plan_dashboard.workloads, name: 2.DA VALUTARE},
          {axisId: 3.BP DA APPROVARE - mat_plan_dashboard.workloads, id: 3.BP DA APPROVARE
              - mat_plan_dashboard.workloads, name: 3.BP DA APPROVARE}, {axisId: 9.ISSUE
              - mat_plan_dashboard.workloads, id: 9.ISSUE - mat_plan_dashboard.workloads,
            name: 9.ISSUE}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: []
    font_size: 10px
    series_types: {}
    series_colors: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Complete workloads migration plan per status
    listen: {}
    row: 42
    col: 0
    width: 24
    height: 8
  - title: Issues by Go-Live Date
    name: Issues by Go-Live Date
    model: tim
    explore: mat_plan_dashboard
    type: looker_column
    fields: [mat_plan_dashboard.go_live_gcp_pianificato_data_month, mat_plan_dashboard.workloads,
      mat_plan_dashboard.stato_issue]
    pivots: [mat_plan_dashboard.stato_issue]
    filters:
      mat_plan_dashboard.go_live_gcp_pianificato_data_month: 2020/01/01 to 2023/08/31
      mat_plan_dashboard.stato: 9.ISSUE
    sorts: [mat_plan_dashboard.go_live_gcp_pianificato_data_month desc, mat_plan_dashboard.stato_issue]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: 5e3e1788-9642-5a4f-5658-74707f65ab7e
        label: Custom
        type: discrete
        colors:
        - "#1A73E8"
        - "#12B5CB"
        - "#E52592"
        - "#E8710A"
        - "#F9AB00"
        - "#7CB342"
        - "#9334E6"
        - "#079c98"
        - "#A8A116"
        - "#EA4335"
        - "#FF8168"
      options:
        steps: 5
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    series_colors: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: Total workload migration issues by planned go-live date, grouped by
      kind of issue (see legend)
    listen: {}
    row: 50
    col: 0
    width: 24
    height: 11
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border: solid 1px #4285F4; border-radius: 5px; padding: 5px 10px; background: #eaf1fe; height: 200px; text-align: center; margin-bottom: 10px;">

        <div>

          <img style="height: 60px; margin-top: 30px;" src="https://services.google.com/fh/files/emails/looker_logo.png"/>

          <h1 style="font-size: 28px;">TIM to GCP Migration Plan </h1>

        </div>

      <nav style="font-size: 18px; position: absolute; bottom: 0; text-align: center;">

        <a style="padding: 5px; line-height: 40px; font-weight: bold;" href="https://sandbox.looker.karenpyl.com/dashboards/8?Planned+Go+Live+Date+Week=this+week">

          <svg style="height: 16px; fill: #4285F4;" class="svg-icon" viewBox="0 0 20 20">

                    <path d="M17.431,2.156h-3.715c-0.228,0-0.413,0.186-0.413,0.413v6.973h-2.89V6.687c0-0.229-0.186-0.413-0.413-0.413H6.285c-0.228,0-0.413,0.184-0.413,0.413v6.388H2.569c-0.227,0-0.413,0.187-0.413,0.413v3.942c0,0.228,0.186,0.413,0.413,0.413h14.862c0.228,0,0.413-0.186,0.413-0.413V2.569C17.844,2.342,17.658,2.156,17.431,2.156 M5.872,17.019h-2.89v-3.117h2.89V17.019zM9.587,17.019h-2.89V7.1h2.89V17.019z M13.303,17.019h-2.89v-6.651h2.89V17.019z M17.019,17.019h-2.891V2.982h2.891V17.019z"></path>

                  </svg>

                Update</a>

        <a style="padding: 5px; line-height: 40px;" href="https://sandbox.looker.karenpyl.com/dashboards/7?ID=&Stato=&Sistema=&Codice+App=&Descrizione=&Ambiente=&Programma=&Responsabile+IA=&Tipologia=">

          <svg style="height: 16px; fill: #4285F4;" class="svg-icon" viewBox="0 0 20 20">

                    <path d="M12.075,10.812c1.358-0.853,2.242-2.507,2.242-4.037c0-2.181-1.795-4.618-4.198-4.618S5.921,4.594,5.921,6.775c0,1.53,0.884,3.185,2.242,4.037c-3.222,0.865-5.6,3.807-5.6,7.298c0,0.23,0.189,0.42,0.42,0.42h14.273c0.23,0,0.42-0.189,0.42-0.42C17.676,14.619,15.297,11.677,12.075,10.812 M6.761,6.775c0-2.162,1.773-3.778,3.358-3.778s3.359,1.616,3.359,3.778c0,2.162-1.774,3.778-3.359,3.778S6.761,8.937,6.761,6.775 M3.415,17.69c0.218-3.51,3.142-6.297,6.704-6.297c3.562,0,6.486,2.787,6.705,6.297H3.415z"></path>

                  </svg>

                Details</a>

        <a style="padding: 5px; line-height: 40px;" href="https://sandbox.looker.karenpyl.com/dashboards/9?Programma=&Nome+Sistema=&Planned+Go+Live+Date+Date=2020%2F01%2F01+to+2024%2F01%2F01&Codice+App=&Responsabile+IA=&Stato=9.ISSUE">

        <svg  style="height: 16px; fill: #4285F4;" class="svg-icon" viewBox="0 0 20 20">

                    <path d="M17.237,3.056H2.93c-0.694,0-1.263,0.568-1.263,1.263v8.837c0,0.694,0.568,1.263,1.263,1.263h4.629v0.879c-0.015,0.086-0.183,0.306-0.273,0.423c-0.223,0.293-0.455,0.592-0.293,0.92c0.07,0.139,0.226,0.303,0.577,0.303h4.819c0.208,0,0.696,0,0.862-0.379c0.162-0.37-0.124-0.682-0.374-0.955c-0.089-0.097-0.231-0.252-0.268-0.328v-0.862h4.629c0.694,0,1.263-0.568,1.263-1.263V4.319C18.5,3.625,17.932,3.056,17.237,3.056 M8.053,16.102C8.232,15.862,8.4,15.597,8.4,15.309v-0.89h3.366v0.89c0,0.303,0.211,0.562,0.419,0.793H8.053z M17.658,13.156c0,0.228-0.193,0.421-0.421,0.421H2.93c-0.228,0-0.421-0.193-0.421-0.421v-1.263h15.149V13.156z M17.658,11.052H2.509V4.319c0-0.228,0.193-0.421,0.421-0.421h14.308c0.228,0,0.421,0.193,0.421,0.421V11.052z"></path>

                  </svg>

                Initiatives with Issues</a>

      <a style="padding: 5px; line-height: 40px;" href="https://sandbox.looker.karenpyl.com/dashboards/10?Codice+App=&Stato=&Programma=&Responsabile+IA=&Nome+Sistema=&Descrizione=&Decommissioned+Status=true">

          <svg style="height: 16px; fill: #4285F4;" class="svg-icon" viewBox="0 0 20 20">

                    <path d="M12.075,10.812c1.358-0.853,2.242-2.507,2.242-4.037c0-2.181-1.795-4.618-4.198-4.618S5.921,4.594,5.921,6.775c0,1.53,0.884,3.185,2.242,4.037c-3.222,0.865-5.6,3.807-5.6,7.298c0,0.23,0.189,0.42,0.42,0.42h14.273c0.23,0,0.42-0.189,0.42-0.42C17.676,14.619,15.297,11.677,12.075,10.812 M6.761,6.775c0-2.162,1.773-3.778,3.358-3.778s3.359,1.616,3.359,3.778c0,2.162-1.774,3.778-3.359,3.778S6.761,8.937,6.761,6.775 M3.415,17.69c0.218-3.51,3.142-6.297,6.704-6.297c3.562,0,6.486,2.787,6.705,6.297H3.415z"></path>

                  </svg>

                Decommissioning</a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 5
  filters:
  - name: Planned Go Live Date Date
    title: Planned Go Live Date Date
    type: field_filter
    default_value: 2020/01/01 to 2024/01/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: tim
    explore: mat_plan_dashboard
    listens_to_filters: []
    field: mat_plan_dashboard.go_live_gcp_pianificato_data_date
  - name: Nome Sistema
    title: Nome Sistema
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tim
    explore: mat_plan_dashboard
    listens_to_filters: []
    field: mat_plan_dashboard.nome_sistema
  - name: Responsabile IA
    title: Responsabile IA
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tim
    explore: mat_plan_dashboard
    listens_to_filters: []
    field: mat_plan_dashboard.responsabile_ia
  - name: Programma
    title: Programma
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tim
    explore: mat_plan_dashboard
    listens_to_filters: []
    field: mat_plan_dashboard.programma
  - name: Codice App
    title: Codice App
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: tim
    explore: mat_plan_dashboard
    listens_to_filters: []
    field: mat_plan_dashboard.codice_app
