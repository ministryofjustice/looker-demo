view: badges {
  sql_table_name: `digital-cloud-platform-moj.stack_overflow.badges` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: class {
    type: number
    sql: ${TABLE}.class ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.date ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension: tag_based {
    type: yesno
    sql: ${TABLE}.tag_based ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name, users.display_name, users.id]
  }
}
