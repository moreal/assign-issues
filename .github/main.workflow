workflow "Assign moreal to all issues" {
  on = "issue"
  resolves = ["Assign issue"]
}

action "Assign issue" {
  uses = "actions/github"
  needs = ["Assign moreal to all issues"]
  args = "assign @moreal --action=opened"
  secrets = ["GITHUB_TOKEN"]
}

action "Label issue" {
  uses = "actions/github"
  needs = ["Assign issues"]
  args = "label todo --action=opened"
  secrets = ["GITHUB_TOKEN"]
}
