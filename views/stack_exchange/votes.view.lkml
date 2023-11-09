view: votes {
  sql_table_name: `digital-cloud-platform-moj.stack_overflow.votes` ;;
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
  dimension: vote_type_id {
    type: number
    sql: ${TABLE}.vote_type_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
