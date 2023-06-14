Write-Output 'Installing Grafana Agent...'
$grafana_agent_installer = @(Get-ChildItem grafana-agent-installer.exe)[0]
Start-Process $grafana_agent_installer /S /EnableExporter true /Username <username> /Password <password> /Url "http://example.com"
Remove-Item $grafana_agent_installer -Force -Confirm:$false
Write-Output 'Done'
