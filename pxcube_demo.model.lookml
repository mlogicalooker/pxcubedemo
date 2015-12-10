- connection: pxcube_demo

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: f_company

- explore: fbnk_az_account
  joins:
  
    - join: fbnk_az_account_m1
      foreign_key: fbnk_az_account.co_code

- explore: fbnk_az_account_m1

