#!/usr/bin/env bash
function zs

    set selected $(fd --type directory --exclude Library --max-depth 3 ^ ~/ | fzf --preview 'exa -aI ".git" --git --git-ignore --tree --long --level=2 {}')


if [[ -z $selected ]]; then
     exit 0
end

    cd "$selected"

    set selected_name $(basename "$selected" | tr . _);
    zellij attach -c $selected_name
end