# Confuser script
# More novelty than anything

$nouns = (Get-content $PSscriptRoot\nouns.txt ).split("`n") 
$verbs = (Get-content $PSScriptRoot\verbs.txt ).split("`n")

while($true) {
    
    Write-host  "[+]  " -ForegroundColor Gray -NoNewline

    # Either write a fake IP or a string of total crap 1/3 chance
    if((1..3|Get-random) -eq 1) {
        $ip = "$(1..255|Get-random).$(1..255|Get-Random).$(1..255|Get-Random).$(1..255|Get-Random):$(1..65535|Get-random)"
        Write-Host " Transceiving socket: $ip" -NoNewline
    } else {

        write-host " $($verbs|Get-Random) $($nouns|Get-Random) $($nouns|Get-Random)..." -NoNewline

    }
    
    # make a cool progress bar, normies love that shit
    Write-host -nonewline "`n      [" -ForegroundColor DarkCyan
    for ($i = 0; $i -lt (5..75|Get-random); $i++) {
        write-host -NoNewline "=" -ForegroundColor DarkCyan
        Sleep -m (10..100|Get-Random)
    }
    Write-Host "] " -NoNewline -ForegroundColor DarkCyan
    sleep -m 300 
    if (Get-Random $true, $false) {
        Write-Host "Done.`n" -NoNewline -ForegroundColor Green
    }else{
        Write-host "Error! `n" -NoNewline -ForegroundColor DarkRed 
    }

    # make it look Movie-Hack-ey
    if ((1..10|Get-random) -eq 10) {
        if(Get-Random $true,$false) {
            Write-Host "`t[ ACCESS DENIED ] " -backgroundColor DarkRed
        } else {
            Write-Host "`t[ ACCESS GRANTED ] " -backgroundColor DarkGreen
        }
    }

    # rare: print EVIL HACKER SKULL
    if ((1..100|Get-random) -eq 69) {
        write-host "`n`n`n                          { FATAL ERROR }`n
             .... NO! ...                  ... MNO! ...
           ..... MNO!! ...................... MNNOO! ...
         ..... MMNO! ......................... MNNOO!! .
        ..... MNOONNOO!   MMMMMMMMMMPPPOII!   MNNO!!!! .
         ... !O! NNO! MMMMMMMMMMMMMPPPOOOII!! NO! ....
            ...... ! MMMMMMMMMMMMMPPPPOOOOIII! ! ...
           ........ MMMMMMMMMMMMPPPPPOOOOOOII!! .....
           ........ MMMMMOOOOOOPPPPPPPPOOOOMII! ...
            ....... MMMMM..    OPPMMP    .,OMI! ....
             ...... MMMM::   o.,OPMP,.o   ::I!! ...
                 .... NNM:::.,,OOPM!P,.::::!! ....
                  .. MMNNNNNOOOOPMO!!IIPPO!!O! .....
                 ... MMMMMNNNNOO:!!:!!IPPPPOO! ....
                   .. MMMMMNNOOMMNNIIIPPPOO!! ......
                  ...... MMMONNMMNNNIIIOO!..........
               ....... MN MOMMMNNNIIIIIO! OO ..........
            ......... MNO! IiiiiiiiiiiiI OOOO ...........
          ...... NNN.MNO! . O!!!!!!!!!O . OONO NO! ........
           .... MNNNNNO! ...OOOOOOOOOOO .  MMNNON!........
           ...... MNNNNO! .. PPPPPPPPP .. MMNON!........
              ...... OO! ................. ON! .......
                 ................................  `n
                            { HACKED }
        " -ForegroundColor darkred 
    }

    if ((1..50|Get-random) -eq 27) {
    Write-Host "
 	

                               .,,uod8B8bou,,.
                      ..,uod8BBBBBBBBBBBBBBBBRPFT?l!i:.
                 ,=m8BBBBBBBBBBBBBBBRPFT?!||||||||||||||
                 !...:!TVBBBRPFT||||||||||!!^^""'   ||||
                 !.......:!?|||||!!^^""'            ||||
                 !.........||||                     ||||
                 !.........||||  ## computers       ||||
                 !.........||||                     ||||
                 !.........||||                     ||||
                 !.........||||                     ||||
                 !.........||||                     ||||
                 `.........||||                    ,||||
                  .;.......||||               _.-!!|||||
           .,uodWBBBBb.....||||       _.-!!|||||||||!:'
        !YBBBBBBBBBBBBBBb..!|||:..-!!|||||||!iof68BBBBBb.... 
        !..YBBBBBBBBBBBBBBb!!||||||||!iof68BBBBBBRPFT?!::   `.
        !....YBBBBBBBBBBBBBBbaaitf68BBBBBBRPFT?!:::::::::     `.
        !......YBBBBBBBBBBBBBBBBBBBRPFT?!::::::;:!^`"`;:::       `.  
        !........YBBBBBBBBBBRPFT?!::::::::::^''...::::::;         iBBbo.
        `..........YBRPFT?!::::::::::::::::::::::::;iof68bo.      WBBBBbo.
          `..........:::::::::::::::::::::::;iof688888888888b.     `YBBBP^'
            `........::::::::::::::::;iof688888888888888888888b.     `
              `......:::::::::;iof688888888888888888888888888888b.
                `....:::;iof688888888888888888888888888888888899fT!  
                  `..::!8888888888888888888888888888888899fT|!^`"'   
                    `' !!988888888888888888888888899fT|!^"' 
                        `!!8888888888888888899fT|!^`"'"
                          `!988888888899fT|!^`"`'
                            `!9899fT|!^`"
                              `!^`"

    " -ForegroundColor DarkMagenta
    }

    # fake connection interrupt
    if ((1..20|Get-random) -eq 7) {
        Write-Host "`n[!]   " -ForegroundColor Gray -NoNewline
        Write-Host "Connection broken! Retrying..." -ForegroundColor Yellow -NoNewline
        
        do {
            Write-host -nonewline "`n      [" -ForegroundColor DarkCyan
            for ($i = 0; $i -lt (50..300|Get-Random); $i++) {
                write-host -NoNewline "!" -ForegroundColor DarkCyan
                Sleep -m (1..50|Get-Random)
            }
            Write-Host "] " -NoNewline -ForegroundColor DarkCyan
        } while (Get-Random $true,$false)
        
        sleep -m 200
        Write-host "`n[~]   " -NoNewline -ForegroundColor Gray
        write-host "Establishing TLA tunnel..." -NoNewline
        Write-host -nonewline "`n      [" -ForegroundColor DarkCyan
        for ($i = 0; $i -lt (20..100|Get-random); $i++) {
            write-host -NoNewline "o" -ForegroundColor DarkCyan
            Sleep -m (1..50|Get-Random)
        }
        Write-Host "] " -NoNewline -ForegroundColor DarkCyan
        sleep -m 500
        Write-host "`n[~]   " -NoNewline -ForegroundColor Gray
        write-host "Replayed key: $((1..20 | %{ '{0:X}' -f (Get-Random -Max 16) }) -join '')`n"
    }


    # done.
    sleep -m (100..500|Get-Random)
    write-output "`n"
}
