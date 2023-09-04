resource "github_repository" "this" {
  for_each = var.repositories

  name         = each.key
  archived     = try(each.value.archived, false)
  description  = try(each.value.description, null)
  homepage_url = try(each.value.homepage_url, null)
  visibility   = try(each.value.visibility, "public")

  has_discussions = try(each.value.has_discussions, false)
  has_downloads   = try(each.value.has_downloads, true)
  has_issues      = try(each.value.has_issues, true)
  has_projects    = try(each.value.has_projects, true)
  has_wiki        = try(each.value.has_wiki, false)

  allow_auto_merge   = try(each.value.allow_auto_merge, false)
  allow_merge_commit = try(each.value.allow_merge_commit, true)
  allow_rebase_merge = try(each.value.allow_rebase_merge, true)
  allow_squash_merge = try(each.value.allow_squash_merge, true)

  vulnerability_alerts = try(each.value.vulnerability_alerts, null)

  topics = sort(try(each.value.topics, []))
}
