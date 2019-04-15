workflow "Assign moreal to all issues" {
  on = "issue"
  resolves = ["Assign issue", "Label issue"]
}

action "Assign issue" {
  uses = "actions/github"
  args = "assign @moreal --action=opened"
  secrets = ["GITHUB_TOKEN"]
}

action "Label issue" {
  uses = "actions/github"
  needs = ["Assign issue"]
  args = "label todo --action=opened"
  secrets = ["GITHUB_TOKEN"]
}
