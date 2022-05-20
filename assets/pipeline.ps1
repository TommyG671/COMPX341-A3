npm install
npm run build

if ($? -eq $false){
    git add -A
    git commit -m "Testing. Currently code doesn't compile. COMPX341-22A-A3 Commiting from CI/CD Pipeline"
    git push COMPX341-A3
    npm run start
}
else {
    Write-Output "Compile Errors occurred, failed to commit"
}