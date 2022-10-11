

Clear-Host
#python #C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files\useful-scripts\daily-use-scripts\welcome.py



#theme shell 
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt darkblood


set-alias -name c -value clear
set-alias -name ec -value echo
set-alias -name dk -value docker
set-alias -name l -value ls
set-alias -name pp -value python

Function e { exit }
Function pg { flutter pub get }
Function ep { sub $Profile }

Function his { sub C:\Users\narayann7\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline\ConsoleHost_history.txt}


Function touch {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $file_name
    ) New-Item $file_name


}

Function file {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $file_name
    ) 
   $command="explorer $file_name"
   Invoke-Expression $command
}

Function epvc { code $Profile }
Function hm { Set-Location ~ }
Function down { Set-Location "~/Downloads" }
Function doc { Set-Location "~/Documents" }
Function dump { Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos\dump" }
Function dumpl { Set-Location "C:\Users\narayann7\dumpl" }
Function scripts { Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files" }
Function test { Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos\dump\testing" }
Function testl { Set-Location "C:\Users\narayann7\testing" }
Function gr { Set-Location "C:\Users\narayann7\Documents\love\GitHubRepos" }

Function sub {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $message
    )
    if ($message -eq "1") {
        C:\"Program Files"\"Sublime Text"\sublime_text.exe
    }
    elseif ($message -eq ".") {
        C:\"Program Files"\"Sublime Text"\sublime_text.exe $pwd
    } else {
        C:\"Program Files"\"Sublime Text"\sublime_text.exe $message
    }

}
Function ghinit {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $repo_name,
          [Parameter(Mandatory = $false,
            ValueFromPipeline = $true)]
        [string[]]
        $type
   
    )

    if($type){  gh repo create   $repo_name --private }
         else{    gh repo create   $repo_name --public }

    git init
    git add .
    git commit -m "initial commit"
    git branch -M main
    git remote add origin https://github.com/narayann7/$repo_name.git
    git push -u origin main



}



Function gac {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $message
    )
    git add .
    git commit -m "$message"
}
Function op {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $message
    )
  g++ $message
  .\a.exe
}
Function gcp {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $message
    )
    git add .
    git commit -m "$message"
    git push origin -u main
}

Function pushall {
    $command = "python C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files\useful-scripts\daily-use-scripts\pushAllGitHubRepo.py 0"
    Invoke-Expression $command
}
Function pushallm {
    $command = "python C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files\useful-scripts\daily-use-scripts\pushAllGitHubRepo.py 1"
    Invoke-Expression $command
}

Function gethis {
    $path = (Get-PSReadlineOption).HistorySavePath
    Get-Content $path
}
Function hispath {
    $path = (Get-PSReadlineOption).HistorySavePath
    Write-Output $path
}

Function vs {
    $path = "code $pwd"
    Invoke-Expression $path
}

Function op7 {
 Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $port
    )
    $path = "python C:\Users\narayann7\Documents\love\GitHubRepos\scripts-n-files\useful-scripts\daily-use-scripts\adb_connect_wireless.py $port"
    Invoke-Expression $path
}

function sudo {
    Start-Process @args -verb runas
}

function envop{
    sysdm.cpl
}

Function whereis {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $command
    )
    (gcm $command).Path
}

Function idraw {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $name
    )
   $filename ="$name.drawio"
   New-Item $filename
}

Function edraw {
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true)]
        [string[]]
        $name
    )
   $filename ="$name.excalidraw"
   New-Item $filename
}

Set-PSReadLineOption -PredictionViewStyle ListView

Set-PSReadLineOption -PredictionSource History










