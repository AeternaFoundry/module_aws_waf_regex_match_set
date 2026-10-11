output "waf_regex_match_sets_id" {
  description = "Map of id values across all waf_regex_match_sets, keyed the same as var.waf_regex_match_sets"
  value       = { for k, v in aws_waf_regex_match_set.waf_regex_match_sets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "waf_regex_match_sets_arn" {
  description = "Map of arn values across all waf_regex_match_sets, keyed the same as var.waf_regex_match_sets"
  value       = { for k, v in aws_waf_regex_match_set.waf_regex_match_sets : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "waf_regex_match_sets_name" {
  description = "Map of name values across all waf_regex_match_sets, keyed the same as var.waf_regex_match_sets"
  value       = { for k, v in aws_waf_regex_match_set.waf_regex_match_sets : k => v.name if v.name != null && length(v.name) > 0 }
}
output "waf_regex_match_sets_regex_match_tuple" {
  description = "Map of regex_match_tuple values across all waf_regex_match_sets, keyed the same as var.waf_regex_match_sets"
  value       = { for k, v in aws_waf_regex_match_set.waf_regex_match_sets : k => v.regex_match_tuple if v.regex_match_tuple != null && length(v.regex_match_tuple) > 0 }
}

