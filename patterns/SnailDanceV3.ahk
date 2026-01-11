loop reps {
send "{" AFCLRKey " down}" ;RightKey
Walk(2.5 * size)
send "{" AFCLRKey " up}{" TCFBKey " down}" ;ForwardKey
Walk(2.5 * size)
send "{" TCFBKey " up}{" TCLRKey " down}" ;LeftKey
Walk(2.5 * size)
send "{" TCLRKey " up}{" AFCFBKey " down}" ;BackKey
Walk(5 * size)
send "{" AFCFBKey " up}{" TCLRKey " down}" ;LeftKey
Walk(2.5 * size)
send "{" TCLRKey " up}{" TCFBKey " down}" ;ForwardKey
Walk(2.5 * size)
send "{" TCFBKey " up}{" AFCLRKey " down}" ;RightKey
Walk(5 * size)
send "{" AFCLRKey " up}{" AFCFBKey " down}" ;BackKey
Walk(2.5 * size)
send "{" AFCFBKey " up}{" TCLRKey " down}" ;LeftKey
Walk(2.5 * size)
send "{" TCLRKey " up}{" TCFBKey " down}" ;ForwardKey
Walk(5 * size)
send "{" TCFBKey " up}{" TCLRKey " down}" ;LeftKey
Walk(2.5 * size)
send "{" TCLRKey " up}{" AFCFBKey " down}" ;BackKey
Walk(2.5 * size)
send "{" AFCFBKey " up}{" AFCLRKey " down}" ;RightKey
Walk(2.5 * size)
send "{" AFCLRKey " up}"
}