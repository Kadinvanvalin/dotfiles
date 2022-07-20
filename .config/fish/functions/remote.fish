function remote
    set git_remote (git remote get-url origin)
    set url (dolly $git_remote o) || $git_remote
    open $url
end