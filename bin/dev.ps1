if (-not (gem list foreman -i -q)) {
  Write-Host "Installing foreman..."
  gem install foreman
}

Start-Process -FilePath "foreman" -ArgumentList "start -f Procfile.dev $args" -NoNewWindow
