view: post_links {
  sql_table_name: `digital-cloud-platform-moj.stack_overflow.post_links` ;;
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
  dimension: link_type_id {
    type: number
    sql: ${TABLE}.link_type_id ;;
  }
  dimension: post_id {
    type: number
    sql: ${TABLE}.post_id ;;
  }
  dimension: related_post_id {
    type: number
    sql: ${TABLE}.related_post_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
