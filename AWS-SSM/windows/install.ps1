Write-Output 'Installing Grafana Agent...'
$MYPARM1=$env:SSM_MYPARM1
$MYPARM2=$env:SSM_MYPARM2
$MYPARM3=$env:SSM_MYPARM3

$grafana_agent_installer = @(Get-ChildItem grafana-agent-installer.exe)[0]
Start-Process $grafana_agent_installer /S /EnableExporter true /Username $MYPARM1 /Password $MYPARM2 /Url "http://example.com"
Remove-Item $grafana_agent_installer -Force -Confirm:$false
Write-Output 'Done'
