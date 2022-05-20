npm install
npm run build

if ($? -eq $true){
    cd..
    git add -A
    git commit -m "COMPX341-22A-A3 Commiting from CI/CD Pipeline"
    git push 
    cd assets 
    npm run start
}
else {
    Write-Output "Compile Errors occurred, failed to commit"
}