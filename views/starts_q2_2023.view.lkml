view: starts_q2_2023 {
  sql_table_name: `digital-cloud-platform-moj.offender_management_statistics_quarterly.starts_q2_2023` ;;

  dimension: count {
    type: number
    sql: ${TABLE}.COUNT ;;
  }
  dimension: date {
    type: string
    sql: ${TABLE}.DATE ;;
  }
  dimension: order_type {
    type: string
    sql: ${TABLE}.ORDER_TYPE ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }
  dimension: sex {
    type: string
    sql: ${TABLE}.SEX ;;
  }
  measure: count_measure {
    type: count
  }
}
