- dashboard: goforecastentryreps
  title: go/forecast-entry-reps
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_location_top: false
  preferred_slug: 8gBhzhUJVAuQWhxDueznnv
  elements:
  - title: Revenue (Quarterly)
    name: Revenue (Quarterly)
    model: cloud_sales_bi
    explore: account_forecast_demo
    type: looker_grid
    fields: [gcp_account_forecast.calendar_quarter_of_year, gcp_account_forecast.user_called_product_forecast,
      gcp_account_forecast.forecast_product_target, gcp_account_forecast.user_called_product_forecast_percent_target,
      gcp_account_forecast.forecast_product_bi_or_systems, gcp_account_forecast.forecast_product_user_input_adjustment]
    filters:
      gcp_account_forecast.calendar_quarter: '2023'
    sorts: [gcp_account_forecast.calendar_quarter_of_year]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [gcp_account_forecast.calendar_quarter_of_year, gcp_account_forecast.current_product_called_forecast,
      gcp_account_forecast.forecast_product_bi_or_systems, gcp_account_forecast.forecast_product_target,
      target, gcp_account_forecast.user_called_product_forecast, gcp_account_forecast.user_called_override]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      gcp_account_forecast.calendar_quarter_of_year: Quarter
      gcp_account_forecast.current_product_called_forecast: Current Called Forecast
      gcp_account_forecast.forecast_product_target: Target
      gcp_account_forecast.user_called_product_forecast: Call
      gcp_account_forecast.forecast_product_user_input_adjustment: Adjustment
      gcp_account_forecast.user_called_product_forecast_percent_target: Target %
    series_cell_visualizations:
      gcp_account_forecast.current_product_forecast:
        is_active: false
    series_text_format:
      gcp_account_forecast.user_called_override:
        bg_color: "#bdd4ff"
      gcp_account_forecast.user_called_product_forecast:
        bg_color: "#bdd4ff"
        align: left
      gcp_account_forecast.current_product_called_forecast:
        align: left
      gcp_account_forecast.forecast_product_target:
        align: left
      gcp_account_forecast.current_product_called_forecast_percent_target:
        align: left
      gcp_account_forecast.user_called_product_forecast_percent_target:
        align: left
      gcp_account_forecast.forecast_product_bi_or_systems:
        align: left
      gcp_account_forecast.forecast_product_current_adjustment:
        align: left
      gcp_account_forecast.forecast_product_user_input_adjustment:
        align: left
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Q2 Forecast Input: gcp_account_forecast.q2_forecast_input
      Q3 Forecast Input: gcp_account_forecast.q3_forecast_input
      Q4 Forecast Input: gcp_account_forecast.q4_forecast_input
      Q1 Forecast Input: gcp_account_forecast.q1_forecast_input
      Notes: gcp_account_forecast.notes
      Forecast Product: gcp_account_forecast.forecast_product
      Reporting Account Name: gcp_account_forecast.reporting_account_name
      Reset to BI Model: gcp_account_forecast.reset_to_bi_forecast
    row: 12
    col: 0
    width: 17
    height: 4
  - title: Submit Call
    name: Submit Call
    model: cloud_sales_bi
    explore: account_forecast_demo
    type: single_value
    fields: [gcp_account_forecast.submit_forecast_call]
    filters:
      gcp_account_forecast.calendar_quarter: '2023'
    sorts: [gcp_account_forecast.submit_forecast_call]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    header_text_alignment: center
    header_font_size: '16'
    rows_font_size: '18'
    show_sql_query_menu_options: false
    column_order: [gcp_account_forecast.current_product_called_forecast, gcp_account_forecast.forecast_product_target,
      gcp_account_forecast.forecast_product_bi_or_systems, gcp_account_forecast.user_called_product_forecast,
      gcp_account_forecast.user_called_override, gcp_account_forecast.submit_forecast_call]
    show_totals: false
    show_row_totals: true
    truncate_header: false
    series_labels:
      current_product_forecast: Current Call
      user_called_product_forecast: Your New Call
      user_called_product_forecast_override: Your Override
    series_cell_visualizations:
      gcp_account_forecast.current_product_called_forecast:
        is_active: false
    series_text_format:
      user_called_product_forecast_override:
        align: center
      user_called_product_forecast:
        align: center
      current_product_forecast:
        align: center
      gcp_account_forecast.submit_forecast_call:
        align: center
      current_bi_forecast:
        align: center
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '1'
    conditional_formatting: [{type: less than, value: -100, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: google, custom: {
            id: 58116279-2939-c2fd-ed5d-c938e266524c, label: Custom, type: continuous,
            stops: [{color: "#de5246", offset: 0}, {color: "#4285F4", offset: 50},
              {color: "#185ABC", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: []}, {type: greater than, value: 100,
        background_color: '', font_color: "#34A853", color_application: {collection_id: google,
          palette_id: google-sequential-0}, bold: false, italic: false, strikethrough: false,
        fields: []}]
    defaults_version: 1
    hidden_fields: [gcp_account_forecast.current_product_forecast, gcp_account_forecast.current_product_bi_forecast]
    series_types: {}
    hidden_points_if_no: []
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Q2 Forecast Input: gcp_account_forecast.q2_forecast_input
      Q3 Forecast Input: gcp_account_forecast.q3_forecast_input
      Q4 Forecast Input: gcp_account_forecast.q4_forecast_input
      Q1 Forecast Input: gcp_account_forecast.q1_forecast_input
      Notes: gcp_account_forecast.notes
      Forecast Product: gcp_account_forecast.forecast_product
      Reporting Account Name: gcp_account_forecast.reporting_account_name
      Reset to BI Model: gcp_account_forecast.reset_to_bi_forecast
    row: 10
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div id="instructions" style="font-size:1em;text-align:center">
      <h2>Instructions</h2>

      <ol style="line-height: 40px;text-align:left">
      <li>Select the <img src="https://screenshot.googleplex.com/9zMfqSRRHKfXYcb.png" style="height:3em"> and <img src="https://screenshot.googleplex.com/86KhWXpWF5e4teZ.png" style="height:3em"> that you want to call using the filters on the right hand side of the page.</li>
      <li>If you already know the forecast amounts (absolutes, not relative overrides) you want to enter, you can add those in the same right-hand menu in the fields labeled <img src="https://screenshot.googleplex.com/7LmLwpjQM2W2NvD.png" style="height:3em">, <img src="https://screenshot.googleplex.com/KhiP8mDTfNe6z6y.png" style="height:3em">, etc.  You can enter notes in the <img src="https://screenshot.googleplex.com/3BoHSu6kiuQdDmB.png" style="height:3em"> field.  If you're not sure of your called forecast yet, leave those fields blank.</li>
      <li>Click <img src="https://screenshot.googleplex.com/52CptnUB4BumUqh.png" style="height:1.5em"> in the top right corner</li>
      <li>If you like the overrides you entered, click the <img src="https://screenshot.googleplex.com/4UXsnhzLHUCrTp8.png" style="height:4em"> (underneath the "User Enter Notes" tile).</li>
      <li>If you want to change your called forecast, you can add those in the same right-hand menu in the fields labeled <img src="https://screenshot.googleplex.com/7LmLwpjQM2W2NvD.png" style="height:3em">, <img src="https://screenshot.googleplex.com/KhiP8mDTfNe6z6y.png" style="height:3em">, etc.  You can enter notes in the <img src="https://screenshot.googleplex.com/3BoHSu6kiuQdDmB.png" style="height:3em"> field.  Once you've entered them, click <img src="https://screenshot.googleplex.com/52CptnUB4BumUqh.png" style="height:1.5em">  in the top right corner and then click the <img src="https://screenshot.googleplex.com/4UXsnhzLHUCrTp8.png" style="height:4em"></li>
      <li>Repeat this process for other products or forecast types</li>
      </ol>

      </div>
    row: 50
    col: 0
    width: 24
    height: 11
  - title: New Notes
    name: New Notes
    model: cloud_sales_bi
    explore: account_forecast_demo
    type: looker_grid
    fields: [gcp_account_forecast.notes_view]
    filters:
      gcp_account_forecast.calendar_quarter: '2023'
    sorts: [gcp_account_forecast.notes_view]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'sum(${gcp_account_forecast.current_product_forecast})',
        label: Current Product Forecast, value_format: "[>1000000000]$0.00,,,\\B;[>1000000]$0.00,,\\\
          M;$0.00,\\K", value_format_name: __custom, _kind_hint: measure, table_calculation: current_product_forecast,
        _type_hint: number, is_disabled: true}, {category: table_calculation, expression: 'sum(${gcp_account_forecast.user_called_product_forecast})',
        label: User Called Product Forecast, value_format: "[>1000000000]$0.00,,,\\\
          B;[>1000000]$0.00,,\\M;$0.00,\\K", value_format_name: __custom, _kind_hint: measure,
        table_calculation: user_called_product_forecast, _type_hint: number, is_disabled: true},
      {category: table_calculation, expression: 'sum(${gcp_account_forecast.user_called_override})',
        label: User Called Product Forecast Override, value_format: "+$0.00,,\\M;-$0.00,,\\\
          M", value_format_name: __custom, _kind_hint: measure, table_calculation: user_called_product_forecast_override,
        _type_hint: number, is_disabled: true}]
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '16'
    rows_font_size: '16'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [current_product_forecast, user_called_product_forecast, user_called_product_forecast_override,
      gcp_account_forecast.submit_forecast_call]
    show_totals: false
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    series_text_format:
      user_called_product_forecast_override:
        align: center
      user_called_product_forecast:
        align: center
      current_product_forecast:
        align: center
      gcp_account_forecast.submit_forecast_call:
        align: center
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '1'
    conditional_formatting: [{type: less than, value: -100, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: google, custom: {
            id: 58116279-2939-c2fd-ed5d-c938e266524c, label: Custom, type: continuous,
            stops: [{color: "#de5246", offset: 0}, {color: "#4285F4", offset: 50},
              {color: "#185ABC", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: []}, {type: greater than, value: 100,
        background_color: '', font_color: "#34A853", color_application: {collection_id: google,
          palette_id: google-sequential-0}, bold: false, italic: false, strikethrough: false,
        fields: []}]
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    hidden_points_if_no: []
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    title_hidden: true
    listen:
      Q2 Forecast Input: gcp_account_forecast.q2_forecast_input
      Q3 Forecast Input: gcp_account_forecast.q3_forecast_input
      Q4 Forecast Input: gcp_account_forecast.q4_forecast_input
      Q1 Forecast Input: gcp_account_forecast.q1_forecast_input
      Notes: gcp_account_forecast.notes
      Forecast Product: gcp_account_forecast.forecast_product
      Reporting Account Name: gcp_account_forecast.reporting_account_name
      Reset to BI Model: gcp_account_forecast.reset_to_bi_forecast
    row: 16
    col: 0
    width: 24
    height: 4
  - title: Other Resources
    name: Other Resources
    model: cloud_sales_bi
    explore: pommelhorse_links
    type: looker_grid
    fields: [pommelhorse_links.link_name_no_image, pommelhorse_links.category]
    filters:
      pommelhorse_links.link_name_no_image: Account Lookup,BHI Home
      pommelhorse_links.category: Revenue Detail
    sorts: [pommelhorse_links.link_name_no_image]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '16'
    rows_font_size: '16'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      pommelhorse_links.link_name_no_image: Other Resources
    header_font_color: "#fff"
    header_background_color: "#4285F4"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [pommelhorse_links.category]
    title_hidden: true
    listen:
      Reporting Account Name: pommelhorse_links.reporting_account_name
    row: 47
    col: 0
    width: 24
    height: 3
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<h1 id=\"top\" style=\"\n    color:#4285f4; \n    text-align:left;\n\
      \    padding: 15px 0px 0px 0px;\n    height: 80px;\n    border-bottom: 2px solid\
      \ #4285f4;\n\">go/forecast-entry-reps</h1> \n\n<div id=\"menu\" style=\"background:#4285F4;color:\
      \ #FFF;height: 50px;padding-left:14px;border-radius:15px;\">\n   <ul style=\"\
      margin:0 auto;padding:0;list-style: none\">\n\n        <li style=\"float: left;display:\
      \ inline;border-left:2px solid #ffffff;\">\n           <a style=\"display: block;line-height:\
      \ 50px;padding:0 5px;text-decoration: none;color: #FFFFFF;font-size: 14px;\"\
      \ href=\"#instructions\" rel=\"noopener noreferrer\">Instructions</a></li>\n\
      \n        <li style=\"float: left;display: inline;border-left:2px solid #ffffff;\"\
      >\n           <a style=\"display: block;line-height: 50px;padding:0 5px;text-decoration:\
      \ none;color: #FFFFFF;font-size: 14px;\" href=\"#product-descriptions\" rel=\"\
      noopener noreferrer\">Product Descriptions</a></li>\n\n\n\n        <li style=\"\
      float: left;display: inline;border-left:2px solid #ffffff;\">\n           <a\
      \ style=\"display: block;line-height: 50px;padding:0 5px;text-decoration: none;color:\
      \ #FFFFFF;font-size: 14px;\" href=\"#revenue-call\" rel=\"noopener noreferrer\"\
      >Input Revenue Calls</a></li>\n\n        <li style=\"float: left;display: inline;border-left:2px\
      \ solid #ffffff;\">\n           <a style=\"display: block;line-height: 50px;padding:0\
      \ 5px;text-decoration: none;color: #FFFFFF;font-size: 14px;\" href=\"http://go/forecast-entry-nnl\"\
      >Input New Logo Calls</a></li>\n\n       <li style=\"float: left;display: inline;border-left:2px\
      \ solid #ffffff;\">\n           <a style=\"display: block;line-height: 50px;padding:0\
      \ 5px;text-decoration: none;color: #FFFFFF;font-size: 14px;\" href=\"#pipeline\"\
      \ rel=\"noopener noreferrer\">Input Pipeline/Bookings Calls</a></li>\n\n   \
      \    <li style=\"float: left;display: inline;border-left:2px solid #ffffff;\"\
      >\n           <a style=\"display: block;line-height: 50px;padding:0 5px;text-decoration:\
      \ none;color: #FFFFFF;font-size: 14px;\" href=\"http://go/bhi-reps\">BHI Reps</a></li>\n\
      \n\n       <li style=\"float: left;display: inline;border-left:2px solid #ffffff;\"\
      >\n           <a style=\"display: block;line-height: 50px;padding:0 5px;text-decoration:\
      \ none;color: #FFFFFF;font-size: 14px;\" href=\"http://go/bhi\">BHI Home</a></li>\n\
      \   </ul>\n</div>"
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Reporting Account Name
    name: Reporting Account Name
    model: cloud_sales_bi
    explore: vector_customers
    type: single_value
    fields: [vector_customers.reporting_account_name]
    filters:
      vector_customers.reporting_id: ''
    sorts: [vector_customers.reporting_account_name]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Reporting Account Name: vector_customers.reporting_account_name
    row: 8
    col: 0
    width: 24
    height: 1
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <h2 style="text-align:center">Instructions</h2>
      <ol style="font-size:1.25em">
      <li>Click on the name of an opportunity you want to update </li>
      <li>Select "View in Vector" and update your opportunity in Vector</li>
      <br>
      <img style="align:center" src="https://screenshot.googleplex.com/6D7j3JSdqpkZVzo.png">
      </ol>
    row: 22
    col: 0
    width: 24
    height: 6
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<h1 id=\"pipeline\"     style=\"\n    color:#4285f4; \n    text-align:left;\n\
      \    padding: 15px 0px 0px 0px;\n    height: 60px;\n    font-size:2em;\n   \
      \ border-bottom: 2px solid #4285f4;\n\">\n<a href=\"#top\" rel=\"noopener noreferrer\"\
      >⬆️</a>\nInput Pipeline/Bookings Calls</h1> \n"
    row: 20
    col: 0
    width: 24
    height: 2
  - title: GCP Commit Pipeline
    name: GCP Commit Pipeline
    model: cloud_sales_bi
    explore: opportunities
    type: looker_grid
    fields: [opportunities.opportunity_name, opportunities.forecast_category_name,
      opportunities.stage_name, opportunities.total_gcp_incremental_acv, opportunities.close_date]
    filters:
      opportunities.deal_type: Commit Parent
      opportunities.status: OPEN
    sorts: [opportunities.close_date]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    header_font_color: "#fff"
    header_background_color: "#4285F4"
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Reporting Account Name: opportunities.reporting_account_name
    row: 28
    col: 0
    width: 24
    height: 5
  - title: Looker Pipeline
    name: Looker Pipeline
    model: cloud_sales_bi
    explore: opportunities
    type: looker_grid
    fields: [opportunities.opportunity_name, opportunities.stage_name, opportunities.specialist_reporting_category,
      opportunities.close_date, opportunities.total_looker_incremental_acv]
    filters:
      opportunities.deal_type: ''
      opportunities.status: OPEN
      opportunities.is_looker: 'Yes'
    sorts: [opportunities.total_looker_incremental_acv]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      opportunities.total_looker_incremental_acv:
        is_active: false
    header_font_color: "#fff"
    header_background_color: "#EA4335"
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    listen:
      Reporting Account Name: opportunities.reporting_account_name
    row: 33
    col: 0
    width: 24
    height: 6
  - title: Apigee Pipeline
    name: Apigee Pipeline
    model: cloud_sales_bi
    explore: opportunities
    type: looker_grid
    fields: [opportunities.opportunity_name, opportunities.stage_name, opportunities.specialist_reporting_category,
      opportunities.close_date, opportunities.total_bap_pipeline]
    filters:
      opportunities.deal_type: ''
      opportunities.status: OPEN
      opportunities.is_apigee: 'Yes'
    sorts: [opportunities.close_date]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    header_background_color: "#FBBC04"
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    listen:
      Reporting Account Name: opportunities.reporting_account_name
    row: 39
    col: 0
    width: 24
    height: 6
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<h1 id=\"revenue-call\" style=\"\n    color:#4285f4; \n    text-align:left;\n\
      \    padding: 15px 0px 0px 0px;\n    height: 60px;\n    font-size:2em;\n   \
      \ border-bottom: 2px solid #4285f4;\n\">\n<a href=\"#top\" rel=\"noopener noreferrer\"\
      >⬆️</a>\nInput Revenue Call</h1> \n"
    row: 6
    col: 0
    width: 24
    height: 2
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<h1 id=\"pipeline\" style=\"\n    color:#4285f4; \n    text-align:left;\n\
      \    padding: 15px 0px 0px 0px;\n    height: 60px;\n    font-size:2em;\n   \
      \ border-bottom: 2px solid #4285f4;\n\">\n<a href=\"#top\" rel=\"noopener noreferrer\"\
      >⬆️</a>\nAdditional Resources</h1> \n"
    row: 45
    col: 0
    width: 24
    height: 2
  - name: " (7)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div id=\"product-descriptions\" style=\"font-size:1em\">\n<h2 style=\"\
      text-align:center\" >Product Definitions</h2>\n\n<table style=\"border-collapse:collapse;border-spacing:0;width:100%\"\
      \ class=\"tg\">\n   <thead>\n      <tr>\n         <th style=\"background-color:#4285F4;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#FFF;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;font-weight:bold;overflow:hidden;padding:10px\
      \ 5px;text-align:center;vertical-align:top;word-break:normal\"><span style=\"\
      font-weight:bold;color:#FFF;background-color:#4285F4\">Product</span></th>\n\
      \         <th style=\"background-color:#4285F4;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#FFF;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;font-weight:bold;overflow:hidden;padding:10px\
      \ 5px;text-align:center;vertical-align:top;word-break:normal\"><span style=\"\
      font-weight:bold;color:#FFF;background-color:#4285F4\">Definition</span></th>\n\
      \      </tr>\n   </thead>\n   <tbody>\n      <tr>\n         <td style=\"background-color:#FFF;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#000000;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;font-weight:bold;overflow:hidden;padding:10px\
      \ 5px;text-align:center;vertical-align:top;word-break:normal\">GCP Core</td>\n\
      \         <td style=\"background-color:#FFF;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#black;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;overflow:hidden;padding:10px 5px;text-left;vertical-align:top;word-break:normal\"\
      >Sales Revenue inclusive of Data Analytics but exclusive of Marketplace, Looker\
      \ and Apigee</td>\n      </tr>\n   </tbody>\n\n<tbody>\n      <tr>\n       \
      \  <td style=\"background-color:#f8f9fa;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#000000;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;font-weight:bold;overflow:hidden;padding:10px\
      \ 5px;text-align:center;vertical-align:top;word-break:normal\">Data Analytics\
      \ Core</td>\n         <td style=\"background-color:#f8f9fa;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#black;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;overflow:hidden;padding:10px 5px;text-left;vertical-align:top;word-break:normal\"\
      >Subset of GCP core. Exclusive of Looker and inclusive of the following<br>\n\
      <li>Product Group (L2) is Analytics</li>\n<li>Dataproc Node</li>\n<li>Logical\
      \ Product (L3) is AI Platform, Confluent, Confluent Dev, \nConfluent Staging,\
      \ Databricks, Elastic, Elastic - Dev, Fivetran, Informatica, MongoDB Inc., or\
      \ Palantir</li>\n</td>\n      </tr>\n   </tbody>\n\n<tbody>\n      <tr>\n  \
      \       <td style=\"background-color:#FFF;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#000000;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;font-weight:bold;overflow:hidden;padding:10px\
      \ 5px;text-align:center;vertical-align:top;word-break:normal\">Marketplace</td>\n\
      \         <td style=\"background-color:#FFF;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#black;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;overflow:hidden;padding:10px 5px;text-left;vertical-align:top;word-break:normal\"\
      >Inclusive of revenue where Product Group (L2) is Marketplace Services. Is <b>not</b>\
      \ a subset of GCP core.</td>\n      </tr>\n   </tbody>\n\n<tbody>\n      <tr>\n\
      \         <td style=\"background-color:#f8f9fa;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#000000;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;font-weight:bold;overflow:hidden;padding:10px\
      \ 5px;text-align:center;vertical-align:top;word-break:normal\">Looker</td>\n\
      \         <td style=\"background-color:#f8f9fa;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#black;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;overflow:hidden;padding:10px 5px;text-left;vertical-align:top;word-break:normal\"\
      >Looker product, sourced from V12\n</td>\n      </tr>\n   </tbody>\n\n<tbody>\n\
      \      <tr>\n         <td style=\"background-color:#FFF;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#000000;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;font-weight:bold;overflow:hidden;padding:10px\
      \ 5px;text-align:center;vertical-align:top;word-break:normal\">Apigee</td>\n\
      \         <td style=\"background-color:#FFF;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#black;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;overflow:hidden;padding:10px 5px;text-left;vertical-align:top;word-break:normal\"\
      >Apigee product, sourced from V12. Excludes on-prem SKUs.</td>\n      </tr>\n\
      \      <tr>\n         <td style=\"background-color:#FFF;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#000000;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;font-weight:bold;overflow:hidden;padding:10px\
      \ 5px;text-align:center;vertical-align:top;word-break:normal\">Security</td>\n\
      \         <td style=\"background-color:#FFF;border-color:#f8f9fa;border-style:solid;border-width:1px;color:#black;font-family:Google\
      \ Sans, sans-serif;font-size:12.5px;overflow:hidden;padding:10px 5px;text-left;vertical-align:top;word-break:normal\"\
      >Coming early March 2023</td>\n      </tr>\n\n\n   </tbody>\n\n</table>\n</div>"
    row: 61
    col: 0
    width: 24
    height: 9
  - title: Product
    name: Product
    model: cloud_sales_bi
    explore: account_forecast_demo
    type: single_value
    fields: [gcp_account_forecast.product_view]
    filters:
      gcp_account_forecast.calendar_quarter: '2023'
    sorts: [gcp_account_forecast.product_view]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: less than, value: -100, background_color: '',
        font_color: "#EA4335", color_application: {collection_id: google, custom: {
            id: 58116279-2939-c2fd-ed5d-c938e266524c, label: Custom, type: continuous,
            stops: [{color: "#de5246", offset: 0}, {color: "#4285F4", offset: 50},
              {color: "#185ABC", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: []}, {type: greater than, value: 100,
        background_color: '', font_color: "#34A853", color_application: {collection_id: google,
          palette_id: google-sequential-0}, bold: false, italic: false, strikethrough: false,
        fields: []}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    header_text_alignment: left
    header_font_size: '16'
    rows_font_size: '16'
    show_sql_query_menu_options: false
    column_order: [current_product_forecast, user_called_product_forecast, user_called_product_forecast_override,
      gcp_account_forecast.submit_forecast_call]
    show_totals: false
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    series_text_format:
      user_called_product_forecast_override:
        align: center
      user_called_product_forecast:
        align: center
      current_product_forecast:
        align: center
      gcp_account_forecast.submit_forecast_call:
        align: center
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '1'
    defaults_version: 1
    hidden_fields: []
    series_types: {}
    hidden_points_if_no: []
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    title_hidden: true
    listen:
      Q2 Forecast Input: gcp_account_forecast.q2_forecast_input
      Q3 Forecast Input: gcp_account_forecast.q3_forecast_input
      Q4 Forecast Input: gcp_account_forecast.q4_forecast_input
      Q1 Forecast Input: gcp_account_forecast.q1_forecast_input
      Notes: gcp_account_forecast.notes
      Forecast Product: gcp_account_forecast.forecast_product
      Reporting Account Name: gcp_account_forecast.reporting_account_name
      Reset to BI Model: gcp_account_forecast.reset_to_bi_forecast
    row: 9
    col: 0
    width: 24
    height: 1
  - title: Revenue (FY)
    name: Revenue (FY)
    model: cloud_sales_bi
    explore: account_forecast_demo
    type: looker_grid
    fields: [gcp_account_forecast.user_called_product_forecast, gcp_account_forecast.forecast_product_target,
      gcp_account_forecast.user_called_product_forecast_percent_target, gcp_account_forecast.forecast_product_bi_or_systems,
      gcp_account_forecast.forecast_product_user_input_adjustment, gcp_account_forecast.forecast_year]
    filters:
      gcp_account_forecast.calendar_quarter: '2023'
    sorts: [gcp_account_forecast.forecast_year desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    transpose: true
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [{}]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      gcp_account_forecast.calendar_quarter_of_year: Quarter
      gcp_account_forecast.current_product_called_forecast: Current Called Forecast
      gcp_account_forecast.forecast_product_target: Target
      gcp_account_forecast.user_called_product_forecast: Call
      gcp_account_forecast.forecast_year: Year
      gcp_account_forecast.user_called_product_forecast_percent_target: Target %
      gcp_account_forecast.forecast_product_user_input_adjustment: Adjustment
    series_cell_visualizations:
      gcp_account_forecast.current_product_forecast:
        is_active: false
    series_text_format:
      gcp_account_forecast.user_called_override:
        bg_color: "#bdd4ff"
      gcp_account_forecast.user_called_product_forecast:
        bg_color: "#bdd4ff"
        align: left
      gcp_account_forecast.forecast_product_target:
        align: left
      gcp_account_forecast.user_called_product_forecast_percent_target:
        align: left
      gcp_account_forecast.forecast_product_bi_or_systems:
        align: left
      gcp_account_forecast.forecast_product_user_input_adjustment:
        align: left
    defaults_version: 1
    hidden_pivots: {}
    overlay: true
    mapperOptions: {}
    listen:
      Q2 Forecast Input: gcp_account_forecast.q2_forecast_input
      Q3 Forecast Input: gcp_account_forecast.q3_forecast_input
      Q4 Forecast Input: gcp_account_forecast.q4_forecast_input
      Q1 Forecast Input: gcp_account_forecast.q1_forecast_input
      Notes: gcp_account_forecast.notes
      Forecast Product: gcp_account_forecast.forecast_product
      Reporting Account Name: gcp_account_forecast.reporting_account_name
      Reset to BI Model: gcp_account_forecast.reset_to_bi_forecast
    row: 12
    col: 17
    width: 7
    height: 4
  - name: Data Refresh Dates
    title: Data Refresh Dates
    title_hidden: true
    merged_queries:
    - model: cloud_sales_bi
      explore: nal_forecast_demo
      type: looker_single_record
      fields: [gcp_forecast_quotas_transformed.last_forecast_call_date, gcp_forecast_quotas_transformed.next_forecast_call_date]
      filters:
        gcp_forecast_quotas_transformed.calendar_quarter: '2023'
      sorts: [forecast_cycle_dates.forecast_cycle_ending_date desc]
      limit: 500
      dynamic_fields: [{category: table_calculation, expression: row(), label: Merge,
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          table_calculation: merge, _type_hint: number}]
      query_timezone: UTC
      show_view_names: false
      defaults_version: 1
    - model: cloud_sales_bi
      explore: revenue
      type: looker_grid
      fields: [revenue.usage_date]
      filters:
        revenue.segment: "-Scaled"
        revenue.service_display_name: "-Looker,-Looker Data Platform SaaS"
        revenue.sub_region: "-NULL"
        revenue.service_family: CLOUD
        revenue.usage_date: 7 days
        revenue.nal_cluster: ''
        vector_customers.nal_sub_cluster: ''
        vector_customers.is_isv: ''
      sorts: [revenue.usage_date desc]
      limit: 1
      dynamic_fields: [{category: table_calculation, expression: row(), label: Merge,
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          table_calculation: merge, _type_hint: number}]
      query_timezone: user_timezone
      show_view_names: false
      show_row_numbers: false
      transpose: false
      truncate_text: false
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: '12'
      rows_font_size: '12'
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      show_sql_query_menu_options: false
      show_totals: true
      show_row_totals: true
      truncate_header: false
      series_labels:
        max_date.max_date_minus_2_date: Rev Usage up to
        revenue.usage_date: Rev Refresh Date
      series_text_format:
        revenue.usage_date:
          align: left
        max_date.max_date_minus_2_date:
          align: center
        max_date.max_partition_date:
          align: left
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
      join_fields:
      - field_name: merge
        source_field_name: merge
    - model: cloud_sales_bi
      explore: opportunities
      type: looker_line
      fields: [opportunities.table_last_updated_hour]
      filters:
        opportunities.deal_type: ''
      sorts: [opportunities.table_last_updated_hour desc]
      limit: 500
      dynamic_fields: [{category: table_calculation, expression: row(), label: Merge,
          value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
          table_calculation: merge, _type_hint: number}]
      query_timezone: UTC
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
      show_null_points: true
      interpolation: linear
      defaults_version: 1
      join_fields:
      - field_name: merge
        source_field_name: merge
    show_sql_query_menu_options: false
    column_order: [forecast_cycle_dates.next_forecast_cycle_date, forecast_cycle_dates.forecast_cycle_ending_date,
      revenue.usage_date]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_labels:
      forecast_cycle_dates.forecast_cycle_ending_date: Prior Cycle
      forecast_cycle_dates.next_forecast_cycle_date: Current Cycle
      revenue.usage_date: Rev Refresh Date
      opportunities.table_last_updated_hour: Vector Data Time
      gcp_forecast_quotas_transformed.last_forecast_call_date: Last Forecast Cycle
      gcp_forecast_quotas_transformed.next_forecast_call_date: Next Forecast Cycle
    table_theme: white
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '1'
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    type: looker_grid
    hidden_fields: [merge, opportunities.table_last_updated_hour]
    query_fields:
      measures: []
      dimensions:
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: Returns the last forecast cycle ending date
        enumerations:
        field_group_label:
        fill_style: range
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Forecast & Quota Quarter Forecast Cycle Ending Date
        label_from_parameter:
        label_short: Forecast Cycle Ending Date
        map_layer:
        name: forecast_cycle_dates.forecast_cycle_ending_date
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: date
        user_attribute_filter_types:
        - datetime
        - advanced_filter_datetime
        value_format:
        view: forecast_cycle_dates
        view_label: Forecast & Quota Quarter
        dynamic: false
        week_start_day: monday
        original_view: forecast_cycle_dates
        dimension_group:
        error:
        field_group_variant: Forecast Cycle Ending Date
        measure: false
        parameter: false
        primary_key: false
        project_name: cloud_sales_bi
        scope: forecast_cycle_dates
        suggest_dimension: forecast_cycle_dates.forecast_cycle_ending_date
        suggest_explore: nal_forecast_demo
        suggestable: false
        is_fiscal: false
        is_timeframe: true
        is_turtle: false
        can_turtle: false
        turtle_dimension:
        can_time_filter: false
        time_interval:
          name: day
          count: 1
        lookml_link: "/projects/cloud_sales_bi/files/views%2Freporting_tables%2Fforecast_cycle_dates.view.lkml?line=14"
        permanent: true
        source_file: views/reporting_tables/forecast_cycle_dates.view.lkml
        source_file_path: cloud_sales_bi/views/reporting_tables/forecast_cycle_dates.view.lkml
        sql: forecast_cycle_dates.forecast_cycle_ending_date
        sql_case:
        filters:
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: Returns the next forecast cycle date
        enumerations:
        field_group_label:
        fill_style: range
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Forecast & Quota Quarter Next Forecast Cycle Date
        label_from_parameter:
        label_short: Next Forecast Cycle Date
        map_layer:
        name: forecast_cycle_dates.next_forecast_cycle_date
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: date
        user_attribute_filter_types:
        - datetime
        - advanced_filter_datetime
        value_format:
        view: forecast_cycle_dates
        view_label: Forecast & Quota Quarter
        dynamic: false
        week_start_day: monday
        original_view: forecast_cycle_dates
        dimension_group:
        error:
        field_group_variant: Next Forecast Cycle Date
        measure: false
        parameter: false
        primary_key: false
        project_name: cloud_sales_bi
        scope: forecast_cycle_dates
        suggest_dimension: forecast_cycle_dates.next_forecast_cycle_date
        suggest_explore: nal_forecast_demo
        suggestable: false
        is_fiscal: false
        is_timeframe: true
        is_turtle: false
        can_turtle: false
        turtle_dimension:
        can_time_filter: false
        time_interval:
          name: day
          count: 1
        lookml_link: "/projects/cloud_sales_bi/files/views%2Freporting_tables%2Fforecast_cycle_dates.view.lkml?line=27"
        permanent: true
        source_file: views/reporting_tables/forecast_cycle_dates.view.lkml
        source_file_path: cloud_sales_bi/views/reporting_tables/forecast_cycle_dates.view.lkml
        sql: forecast_cycle_dates.next_forecast_cycle_date
        sql_case:
        filters:
        times_used: 0
      - type: number
        align: right
        measure: false
        dynamic: false
        can_pivot: false
        is_numeric: true
        name: merge
        label: Merge
        value_format:
        is_disabled:
        sortable: true
        aggregate: true
        can_filter: false
        permanent: true
      - align: left
        can_filter: false
        category: dimension
        default_filter_value:
        description: Date on which usage was recorded
        enumerations:
        field_group_label: Usage Date
        fill_style: range
        fiscal_month_offset: 0
        has_allowed_values: false
        hidden: false
        is_filter: false
        is_numeric: false
        label: Revenue Usage Date
        label_from_parameter:
        label_short: Usage Date
        map_layer:
        name: revenue.usage_date
        strict_value_format: false
        requires_refresh_on_sort: false
        sortable: true
        suggestions:
        tags: []
        type: date_date
        user_attribute_filter_types:
        - datetime
        - advanced_filter_datetime
        value_format:
        view: revenue
        view_label: Revenue
        dynamic: false
        week_start_day: monday
        original_view: revenue
        dimension_group: revenue.usage
        error:
        field_group_variant: Date
        measure: false
        parameter: false
        primary_key: false
        project_name: cloud_sales_bi
        scope: revenue
        suggest_dimension: revenue.usage_date
        suggest_explore: revenue
        suggestable: false
        is_fiscal: false
        is_timeframe: true
        is_turtle: false
        can_turtle: false
        turtle_dimension:
        can_time_filter: false
        time_interval:
          name: day
          count: 1
        lookml_link: "/projects/cloud_sales_bi/files/views%2Frevenue%2Frevenue_from_revenue.view.lkml?line=333"
        permanent: true
        source_file: views/revenue/revenue.view.lkml
        source_file_path: cloud_sales_bi/views/revenue/revenue.view.lkml
        sql: "${TABLE}.partition_date"
        sql_case:
        filters:
        times_used: 0
        sorted:
          sort_index: 0
          desc: true
      table_calculations: []
      pivots: []
    dynamic_fields: [{category: table_calculation, description: Reflects that last
          hour in which Vector data was updated, expression: 'concat(${opportunities.table_last_updated_hour},
          ":00 PST")', label: Vector Data Time, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: vector_data_time, _type_hint: string}]
    row: 4
    col: 0
    width: 11
    height: 2
  filters:
  - name: Reporting Account Name
    title: Reporting Account Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
    ui_config:
      type: tag_list
      display: popover
    model: cloud_sales_bi
    explore: vector_customers
    listens_to_filters: []
    field: vector_customers.reporting_account_name
  - name: Forecast Product
    title: Forecast Product
    type: field_filter
    default_value: GCP^_CORE.SALES^_REVENUE
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - GCP_CORE.SALES_REVENUE
      - APIGEE.SALES_REVENUE
      - LOOKER.SALES_REVENUE
      - DATA_ANALYTICS_CORE.SALES_REVENUE
      - MARKETPLACE.SALES_REVENUE
    model: cloud_sales_bi
    explore: account_forecast_demo
    listens_to_filters: []
    field: gcp_account_forecast.forecast_product
  - name: Q1 Forecast Input
    title: Q1 Forecast Input
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: cloud_sales_bi
    explore: account_forecast_demo
    listens_to_filters: []
    field: gcp_account_forecast.q1_forecast_input
  - name: Q2 Forecast Input
    title: Q2 Forecast Input
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: cloud_sales_bi
    explore: account_forecast_demo
    listens_to_filters: []
    field: gcp_account_forecast.q2_forecast_input
  - name: Q3 Forecast Input
    title: Q3 Forecast Input
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: cloud_sales_bi
    explore: account_forecast_demo
    listens_to_filters: []
    field: gcp_account_forecast.q3_forecast_input
  - name: Q4 Forecast Input
    title: Q4 Forecast Input
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: cloud_sales_bi
    explore: account_forecast_demo
    listens_to_filters: []
    field: gcp_account_forecast.q4_forecast_input
  - name: Notes
    title: Notes
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: cloud_sales_bi
    explore: account_forecast_demo
    listens_to_filters: []
    field: gcp_account_forecast.notes
  - name: Reset to BI Model
    title: Reset to BI Model
    type: field_filter
    default_value: 'No'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: cloud_sales_bi
    explore: account_forecast_demo
    listens_to_filters: []
    field: gcp_account_forecast.reset_to_bi_forecast
