function kk
    if test -z "$argv[1]"
        la .
    else if test -f "$argv[1]"
        bat "$argv[1]"
    else if  test -d "$argv[1]"
        la "$argv[1]"
    else
        echo "I don't know what that is"
    end
end
