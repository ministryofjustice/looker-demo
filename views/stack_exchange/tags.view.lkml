view: tags {
  sql_table_name: `digital-cloud-platform-moj.stack_overflow.tags` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: count_tags {
    type: number
    sql: ${TABLE}.count ;;
  }
  dimension: excerpt_post_id {
    type: number
    sql: ${TABLE}.excerpt_post_id ;;
  }
  dimension: tag_name {
    type: string
    sql: ${TABLE}.tag_name ;;
  }
  dimension: wiki_post_id {
    type: number
    sql: ${TABLE}.wiki_post_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, tag_name]
  }
}
