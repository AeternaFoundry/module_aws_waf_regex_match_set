resource "aws_waf_regex_match_set" "waf_regex_match_sets" {
  for_each = var.waf_regex_match_sets

  name = each.value.name

  dynamic "regex_match_tuple" {
    for_each = each.value.regex_match_tuple != null ? each.value.regex_match_tuple : []
    content {
      field_to_match {
        data = regex_match_tuple.value.field_to_match.data
        type = regex_match_tuple.value.field_to_match.type
      }
      regex_pattern_set_id = regex_match_tuple.value.regex_pattern_set_id
      text_transformation  = regex_match_tuple.value.text_transformation
    }
  }
}

