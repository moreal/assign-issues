workflow "Assign moreal to all issues" {
  on = "issue"
  resolves = ["actions/github-1"]
}

action "Assign issue" {
  uses = "actions/github"
  args = "assign @moreal --action=opened"
}

action "Label issue" {
  uses = "actions/github"
  needs = ["actions/github"]
  args = "label todo --action=opened"
}
