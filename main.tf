resource "snowflake_execute" "executes" {
  for_each = var.executes

  execute = each.value.execute
  revert  = each.value.revert
  query   = each.value.query

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

