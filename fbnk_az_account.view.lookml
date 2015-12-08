- view: fbnk_az_account
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: account_number
    sql: ${TABLE}.ACCOUNT_NUMBER
    
  - dimension: account_type
    sql: ${TABLE}.account_type

  - dimension: category
    sql: ${TABLE}.CATEGORY

  - dimension: co_code
    sql: ${TABLE}.CO_CODE
    html: |
      {{ linked_value }}
      <a href="https://mcap.mlogica.com:9999/dashboards/4?Branch={{value}}" target="_new"> 
      <img src="/images/qr-graph-line@2x.png" height=20 width=20></a>

  - dimension: create
    type: time
    timeframes: [year, month, date]
    sql: ${TABLE}.CREATE_DATE

  - dimension: customer
    sql: ${TABLE}.CUSTOMER

  - dimension: jb_import
    type: time
    timeframes: [year, month, date]
    sql: ${TABLE}.JB_DATE_IMPORT

  - dimension: principal
    type: number
    sql: ${TABLE}.PRINCIPAL
    
  - dimension: principal_tier
    type: tier
    tiers: [0,1000,5000,10000,50000,100000,500000,1000000]
    style: integer
    sql: ${TABLE}.PRINCIPAL
    value_format: '$#,##0'
    
  - dimension: region
    sql: ${TABLE}.region
    html: |
      {{ linked_value }}
      <a href="https://mcap.mlogica.com:9999/dashboards/3?Region={{value}}" target="_new"> 
      <img src="/images/qr-graph-line@2x.png" height=20 width=20></a>

  - dimension: value
    type: time
    timeframes: [year, month, date]
    sql: ${TABLE}.VALUE_DATE

  - measure: count
    type: count
    drill_fields: [id]
    
  - measure: principal_sum
    type: sum
    sql: ${TABLE}.principal
    drill_fields: [id, principal]
    
  - measure: principal_average
    type: average
    sql: ${TABLE}.principal
