output "executes_id" {
  description = "Map of id values across all executes, keyed the same as var.executes except keys with no id are omitted"
  value       = { for k, v in snowflake_execute.executes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "executes_execute" {
  description = "Map of execute values across all executes, keyed the same as var.executes except keys with no execute are omitted"
  value       = { for k, v in snowflake_execute.executes : k => v.execute if v.execute != null && length(v.execute) > 0 }
}
output "executes_query" {
  description = "Map of query values across all executes, keyed the same as var.executes except keys with no query are omitted"
  value       = { for k, v in snowflake_execute.executes : k => v.query if v.query != null && length(v.query) > 0 }
}
output "executes_query_results" {
  description = "Map of query_results values across all executes, keyed the same as var.executes except keys with no query_results are omitted"
  value       = { for k, v in snowflake_execute.executes : k => v.query_results if v.query_results != null && length(v.query_results) > 0 }
}
output "executes_revert" {
  description = "Map of revert values across all executes, keyed the same as var.executes except keys with no revert are omitted"
  value       = { for k, v in snowflake_execute.executes : k => v.revert if v.revert != null && length(v.revert) > 0 }
}

