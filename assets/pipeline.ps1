
if ($null -ne $args[0]) {
    $message = $args[0]
    npm install
    npm run build
    if ($? -eq $true){
        cd..
        git add -A
        git commit -m $message
        git push 
        cd assets 
        npm run start
    }
    else {
        Write-Output "Compile Errors occurred, failed to commit"
    }

}
else {
    Write-Output "Please enter a commit message"
}

