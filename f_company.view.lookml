- view: f_company
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: company_code
    sql: ${TABLE}.COMPANY_CODE

  - dimension: mie_br_code
    sql: ${TABLE}.MIE_BR_CODE

  - dimension: mnemonic
    sql: ${TABLE}.MNEMONIC

  - measure: count
    type: count
    drill_fields: [id]

