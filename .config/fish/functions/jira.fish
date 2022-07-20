function jira
  set branch (git rev-parse --abbrev-ref HEAD)
  set ticket (echo "$branch" | tr '[:lower:]' '[:upper:]')
  open "https://jira.cnvrmedia.net/browse/$ticket"
end