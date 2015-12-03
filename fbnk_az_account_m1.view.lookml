- view: fbnk_az_account_m1
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: account_number
    sql: ${TABLE}.ACCOUNT_NUMBER

  - dimension: amount
    type: number
    sql: ${TABLE}.AMOUNT

  - dimension: mv_seq
    type: int
    sql: ${TABLE}.MV_SEQ

  - dimension: sv_seq
    type: int
    sql: ${TABLE}.SV_SEQ

  - measure: count
    type: count
    drill_fields: [id]

