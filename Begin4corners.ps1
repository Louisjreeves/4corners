 
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
 
$mydownloads = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path

$MyTemp =(Get-Item $mydownloads).fullname
 set-location -Path $mytemp
 
$myloca = "$mytemp\"
 
 try
 {

$response = Invoke-WebRequest -Uri https://github.com/Louisjreeves/4corners/blob/2941f33c8f283760702a462e843dccedc2def8a3/CornersTestandGraph.zip -OutFile $MyTemp\CornersTestandGraph.zip  
 } catch 
 {
    $StatusCode = $_.Exception.Response.StatusCode.value__
  }
  

      Expand-Archive -Path $mydownloads\CornersTestandGraph.zip -DestinationPath $mydownloads\CornersTestandGraph -Force
 
 
 
 
 set-location "$mydownloads\CornersTestandGraph\" 
  .\CornersTestandGraph.ps1
