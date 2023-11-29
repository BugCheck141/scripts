# scripts
useful scripts

## conda
|Description|Command|
|-------------|-----:|
|export|`conda env export --from-history`|
|import|`conda env update --file .\env.yml --prune`|

## lgpo
|Description|Command|
|-------------|-----:|
|export|`.\LGPO.exe /b D:\gpo`|
|parse|`.\LGPO.exe /parse /u '...\DomainSysvol\GPO\User\registry.pol'`|
|import|`.\LGPO.exe /m '...\DomainSysvol\GPO\Machine\registry.pol'`<br>`lgpo /u '...\DomainSysvol\GPO\User\registry.pol'`|
