function zt
    if test -f "$argv[1]"
        bat "$argv[1]"
    else if  test -d "$argv[1]"
        ls "$argv[1]"
    else
        echo "I don't know what that is"
    end
end
