view: comments {
  sql_table_name: `digital-cloud-platform-moj.stack_overflow.comments` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: creation {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creation_date ;;
  }
  dimension: post_id {
    type: number
    sql: ${TABLE}.post_id ;;
  }
  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }
  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
  dimension: user_display_name {
    type: string
    sql: ${TABLE}.user_display_name ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, user_display_name, users.display_name, users.id]
  }
}