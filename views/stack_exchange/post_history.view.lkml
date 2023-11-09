view: post_history {
  sql_table_name: `digital-cloud-platform-moj.stack_overflow.post_history` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }
  dimension_group: creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creation_date ;;
  }
  dimension: post_history_type_id {
    type: number
    sql: ${TABLE}.post_history_type_id ;;
  }
  dimension: post_id {
    type: number
    sql: ${TABLE}.post_id ;;
  }
  dimension: revision_guid {
    type: string
    sql: ${TABLE}.revision_guid ;;
  }
  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, users.display_name, users.id]
  }
}
