output "shield_subscriptions_id" {
  description = "Map of id values across all shield_subscriptions, keyed the same as var.shield_subscriptions"
  value       = { for k, v in aws_shield_subscription.shield_subscriptions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "shield_subscriptions_auto_renew" {
  description = "Map of auto_renew values across all shield_subscriptions, keyed the same as var.shield_subscriptions"
  value       = { for k, v in aws_shield_subscription.shield_subscriptions : k => v.auto_renew if v.auto_renew != null && length(v.auto_renew) > 0 }
}
output "shield_subscriptions_skip_destroy" {
  description = "Map of skip_destroy values across all shield_subscriptions, keyed the same as var.shield_subscriptions"
  value       = { for k, v in aws_shield_subscription.shield_subscriptions : k => v.skip_destroy if v.skip_destroy != null }
}

