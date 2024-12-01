Clear-Host

Write-Output "rimraf node_modules pnpm-lock.yaml dist nextjs-library-1.0.0.tgz"
rimraf node_modules pnpm-lock.yaml dist nextjs-library-1.0.0.tgz 

# Define the path to the node_modules folder
$path = ".\node_modules"

# Start a loop to check if the folder exists
while (Test-Path $path) {
    Write-Host "$path still exists. Waiting 3 seconds..." -ForegroundColor Yellow
    Start-Sleep -Seconds 3

    Write-Output "rimraf node_modules"
    rimraf node_modules 
}

# Define the path to the pnpm-lock.yaml file
$path = ".\pnpm-lock.yaml"

# Start a loop to check if the folder exists
while (Test-Path $path) {
    Write-Host "$path still exists. Waiting 3 seconds..." -ForegroundColor Yellow
    Start-Sleep -Seconds 3

    Write-Output "rimraf pnpm-lock.yaml"
    rimraf pnpm-lock.yaml 

}

# Define the path to the dist folder
$path = ".\dist"

# Start a loop to check if the folder exists
while (Test-Path $path) {
    Write-Host "$path still exists. Waiting 3 seconds..." -ForegroundColor Yellow
    Start-Sleep -Seconds 3

    Write-Output "rimraf dist"
    rimraf dist

}

# Define the path to the nextjs-library-1.0.0.tgz file
$path = ".\nextjs-library-1.0.0.tgz"

# Start a loop to check if the folder exists
while (Test-Path $path) {
    Write-Host "$path still exists. Waiting 3 seconds..." -ForegroundColor Yellow
    Start-Sleep -Seconds 3

    Write-Output "rimraf nextjs-library-1.0.0.tgz"
    rimraf nextjs-library-1.0.0.tgz 

}

# Read-Host "Check if they are already deleted. Press Enter key to continue or Ctrl+C to exit."

Write-Output "pnpm i"
pnpm i

Write-Output "pnpm rpj"
pnpm rpj

Write-Output "npx tsc"
npx tsc

Write-Output "pnpm build"
pnpm build

Write-Output "pnpm gdpj"
pnpm gdpj

Write-Output "pnpm pack"
pnpm pack

Write-Output "pnpm rpj"
pnpm rpj