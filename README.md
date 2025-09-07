# scripts
useful scripts

## powershell
|Description|Command|
|-------------|-----|
|unblock all file|`Get-ChildItem -Recurse \| Unblock-File`|
|Long Path Support|`Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" -Name "LongPathsEnabled" -Value 1 -Type DWord`|


## conda
|Description|Command|
|-------------|-----|
|export|`conda env export --from-history`|
|import|`conda env update --file .\env.yml --prune`|

## lgpo
|Description|Command|
|-------------|-----|
|export|`.\LGPO.exe /b D:\gpo`|
|parse|`.\LGPO.exe /parse /u '...\DomainSysvol\GPO\User\registry.pol'`|
|import|`.\LGPO.exe /m '...\DomainSysvol\GPO\Machine\registry.pol'`<br>`lgpo /u '...\DomainSysvol\GPO\User\registry.pol'`|

## other
|Description|Command|
|-------------|-----|
|start new open-wenui docker|`docker run -d -p 3000:8080 -v open-webui:/app/backend/data --add-host=host.docker.internal:host-gateway --restart always ghcr.io/open-webui/open-webui:main`|

