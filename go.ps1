Clear-Host

Write-Output "rimraf node_modules pnpm-lock.yaml dist nextjs-library-1.0.0.tgz"
rimraf node_modules pnpm-lock.yaml dist nextjs-library-1.0.0.tgz 

# Define the path to the node_modules folder
$path = ".\node_modules"

# Start a loop to check if the folder exists
while (Test-Path $path) {
    Write-Output "node_modules still exists. Waiting 3 seconds..." -ForegroundColor Yellow
    Start-Sleep -Seconds 3
}

# Define the path to the node_modules folder
$path = ".\pnpm-lock.yaml"

# Start a loop to check if the folder exists
while (Test-Path $path) {
    Write-Output "$path still exists. Waiting 3 seconds..." -ForegroundColor Yellow
    Start-Sleep -Seconds 3
}

# Define the path to the node_modules folder
$path = ".\nextjs-library-1.0.0.tgz"

# Start a loop to check if the folder exists
while (Test-Path $path) {
    Write-Output "$path still exists. Waiting 3 seconds..." -ForegroundColor Yellow
    Start-Sleep -Seconds 3
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