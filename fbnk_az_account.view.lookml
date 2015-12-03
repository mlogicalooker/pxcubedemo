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
    
  - dimension: region
    sql: ${TABLE}.region

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
    
  - measure: principal_average
    type: average
    sql: ${TABLE}.principal
