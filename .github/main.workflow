workflow "Assign moreal to all issues" {
  on = "issues"
  resolves = ["actions/github-1"]
}

action "actions/github" {
  uses = "actions/github"
  args = "assign @moreal --action=opened"
}

action "actions/github-1" {
  uses = "actions/github"
  needs = ["actions/github"]
  args = "label todo --action=opened"
}
