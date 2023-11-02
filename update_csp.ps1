####################################################################################################################
#���������� ������� � ������ 4.0.9944 �� 4.0.9963 � ����������� ������������� �����. �������� ���������� ����������
####################################################################################################################
Start-Sleep -Seconds 10
$output = & "C:\Program Files (x86)\Crypto Pro\CSP\csptest.exe" -keyset -verifycontext
$pattern = "Release Ver:(4\.0\.9944)"
$match = [regex]::Match($output, $pattern)
if ($match.Success) {
    $version = $match.Groups[1].Value
    Write-Host "Found version: $version"
$exePath = "\\share\Temp\CryptoUpdate\CSPSetup.exe"
$workingDirectory = "\\share\Temp\CryptoUpdate"
Start-Process -FilePath $exePath -ArgumentList "-Silent", "-noreboot" -WorkingDirectory $workingDirectory -Wait
} else {
    Write-Host "Version 4.0.9963 already installed"
}