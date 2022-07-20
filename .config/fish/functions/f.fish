function f
  cd (fd --type directory --exclude Library --max-depth 3 ^ ~/ | fzf --preview 'exa -aI ".git" --git --git-ignore --tree --long --level=2 {}')
end