 
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
 
$mydownloads = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path

$MyTemp =(Get-Item $mydownloads).fullname
 set-location -Path $mytemp
 
$myloca = "$mytemp\"
 
 try
 {

$response = Invoke-WebRequest -Uri https://github.com/Louisjreeves/MiscRepair/raw/main/CornersTestandGraph2.0.zip -OutFile $MyTemp\CornersTestandGraph2.0.zip  
 } catch 
 {
    $StatusCode = $_.Exception.Response.StatusCode.value__
  }
  

      Expand-Archive -Path $mydownloads\CornersTestandGraph2.0.zip -DestinationPath $mydownloads\CornersTestandGraph2.0\ -Force
 
 
 
 
 set-location "$mydownloads\CornersTestandGraph2.0\" 
  .\CornersTestandGraph2.0.ps1
