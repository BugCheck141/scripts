# Install Winget on Windows 10 LTSC (tiny10)

## Download

Microsoft.DesktopAppInstaller.*.msixbundle from https://github.com/microsoft/winget-cli/releases

tools\Appx\x64\Release\Microsoft.UI.Xaml.*.appx from https://www.nuget.org/packages/Microsoft.UI.Xaml/

https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx

## Install

add-appxpackage -Path \<path to Microsoft.VCLib.appx\>

add-appxpackage -Path \<path to Microsoft.UI.Xaml.appx\>

add-appxpackage -Path \<path to wincli Microsoft.DesktopAppInstaller.msixbundle\>

## Troubleshoot

Windows cannot install package Microsoft.DesktopAppInstaller ... Microsoft.VCLibs.140.00 ... minimum version 14.0.33728.0 ... currently installed are: Microsoft.VCLibs.140.00.UWPDesktop_14.0.33321.0_x64

#### Solution

https://aka.ms/Microsoft.VCLibs.x64.14.00.Desktop.appx doesn't provide the latest version

Download https://winstall.app/apps/Microsoft.VCLibs.Desktop.14

Thanks Microsoft!

## Magic code

 --all --accept-source-agreements --accept-package-agreements
 
 Thanks Microsoft again!
 
