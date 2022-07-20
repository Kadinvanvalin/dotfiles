function pad
  set branch (git rev-parse --abbrev-ref HEAD)
  set ticket (echo "$branch" | tr '[:lower:]' '[:upper:]')
  open "https://pad.cj.dev/p/$ticket"
end